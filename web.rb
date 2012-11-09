require 'bundler'
ENV["RACK_ENV"] ||= "development"
Bundler.setup(:default, ENV["RACK_ENV"])

require 'sinatra/base'
require 'compass'
require 'redcarpet'
require 'haml'
require 'coderay'
require 'deck'
require 'deck/rack_app'
require 'sequel'
require 'json'

DB = Sequel.connect(ENV['DATABASE_URL'] || 'postgres:///students')
class Student < Sequel::Model
end

class HTMLwithCodeRay < Redcarpet::Render::HTML
  INNER_RENDERER = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new)

  def block_code(code, language)
    if language
      CodeRay.scan(code, language).div(:css => :class)
    else
      INNER_RENDERER.render(code)
    end
  end
end

class RubyWorkshop < Sinatra::Base
  def initialize
    super
    @app = ::Deck::RackApp.public_file_server
  end

  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views/stylesheets'
    config.cache_dir = 'tmp/sass-cache'
    config.images_path = 'public/images'
  end

  set :scss, Compass.sass_engine_options

  set :markdown,
    :layout_engine => :erb,
    :no_intra_emphasis => true,
    :fenced_code_blocks => true,
    :renderer => HTMLwithCodeRay.new
  enable :sessions

  get '/dbcheck' do
    DB.tables.inspect
  end

  post '/student' do
    @student = Student.create(:name => params[:name].strip)
    session[:student_id] = @student.student_id.to_s
    puts "Created student: #{@student.values.inspect}"
    @student.values.to_json
  end

  get '/student' do
    puts "Session id #{session[:student_id]}"
    res = if session[:student_id] && (@student = Student[session[:student_id].to_i])
      @student.values
    elsif session[:student_id]
      session.clear 
      {name: 'Jane Doe'}
    else
      {name: 'Jane Doe'}
    end
    puts "Sending student data: #{res.inspect}"
    res.to_json
  end

  post '/progress' do
  end


  get '/' do
    erb :index
  end

  get '/coderay_github' do
    content_type 'text/css', :charset => 'utf-8'
    scss :"stylesheets/_coderay_github"
  end

  get '/schedule' do
    @markdown = true  # even if not technically true, we want the styling
    erb :schedule
  end

  get '/blog' do
    erb :"blog/blog"
  end

  # This handles default routes for the markdown files in `views/`
  # Mostly added so that people who don't want to fuss with a Sinatra app can
  # get right in and start making markdown files.

  get '/*' do
    page = File.join params[:splat]
    @curriculum = true if (page =~ /^curriculum\// && page !~ /curriculum_toc/)

    if File.exist? "views/#{page}.deck.markdown"
      slides = Deck::Slide.split(File.read("views/#{page}.deck.markdown"))
      Deck::SlideDeck.new(:slides => slides).to_pretty
    elsif File.exist? "views/#{page}.markdown"
      @markdown = true
      markdown page.intern
    elsif File.exist? "views/#{page}.erb"
      erb page.intern
    else
      forward
    end
  end

  run! if app_file == $0
end

