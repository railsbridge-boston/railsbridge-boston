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
  one_to_many :completions
end
class Completion  < Sequel::Model
  many_to_one :student
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

  CURRENT_WORKSHOP = 6
  def initialize
    super
    @app = ::Deck::RackApp.public_file_server
  end

  enable :sessions
  set :session_secret, 'railsbridgebosmit'

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

  get '/dbcheck' do
    DB.tables.inspect
  end

  def load_student
    if session[:student_id] && (@student = Student[session[:student_id]])
      @student
    elsif session[:student_id]
      session.clear
      nil
    end
  end

  post '/student' do
    if load_student
      @student.update(:name => params[:name], :ip => request.ip)
      @student.values.to_json
    else
      {:error => "No student found"}
    end
  end

  get '/student' do
    puts "Session id #{session[:student_id]}"
    load_student
    res = if @student
      @student.values.merge(:completions => @student.completions.map(&:values))
    else
      @student = Student.create(:name => nil, :workshop => CURRENT_WORKSHOP)
      session[:student_id] = @student.student_id
      puts "Created student #{@student.student_id}"
      @student.values
    end
    puts "Sending student data: #{res.inspect}"
    res.to_json
  end

  post '/completions' do
    puts params.inspect
    load_student
    if (@completion = Completion[:page => params[:page], :student => @student])
      @completion.update(:created => Time.now)
      puts "Updated completion #{@completion.values}"
    else
      @completion = Completion.create(:student => @student, :page => params[:page])
      puts "Created completion #{@completion.values}"
    end
    "OK"
  end

  # completions for this workshop 
  get '/completions' do
    completions = DB["select page, count(distinct student_id) from completions inner join students using (student_id) \ 
       where students.name is not null and students.ip = '64.119.130.114' and workshop = ? group by page", CURRENT_WORKSHOP].to_a

    total_students = DB["select count(*) as total from students where students.name is not null and students.ip = '64.119.130.114' and workshop = ?", CURRENT_WORKSHOP].first[:total]

    total_completions = DB["select count(*) as total from completions inner join students using (student_id) \
       where students.name is not null and students.ip = '64.119.130.114' and workshop = ?", CURRENT_WORKSHOP].first[:total]
    {completions: completions, total_students: total_students, total_completions: total_completions }.to_json
  end

  get '/' do
    @sponsors = sponsor_url_logos
    erb :index
  end

  get '/sponsors' do
    @sponsors = sponsor_url_logos
    erb :sponsors
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

  get '/blog/2013_jun_recap' do
    @sponsors = jun_2013_sponsors_urls_logos
    erb :"blog/2013_jun_recap"
  end

  def jun_2013_sponsors_urls_logos
    [
      ["http://www.microsoftcambridge.com", "/sponsors/microsoftlogo.png"],
      ["http://www.a2vmedia.com", "/sponsors/a2vmedia.png"],
      ["http://railscasts.com", "/sponsors/railscasts.png"],
      ["http://www.launchacademy.com/", "/sponsors/LaunchAcademyLogo.png"],
      ["http://actblue.com", "/sponsors/actblue.png"],
      ["http://oreilly.com", "/sponsors/ora.gif"],
      ["http://thoughtbot.com", "/sponsors/thoughtbot.png"],
      ["http://paypal.com", "/sponsors/paypal_logo.gif"],
      ["http://www.visiblemeasures.com", "/sponsors/visible_measures.jpg"],
      ["http://annkissam.com", "/sponsors/annkissam.png"],
      ["http://www.digitallumens.com/", "/sponsors/DL_logo.jpg"],
      ["http://terriblelabs.com", "/sponsors/terriblelabs.png"],
      ["http://www.yesware.com", "/sponsors/yesware.png"],
      ["http://rbmtechnologies.com", "/sponsors/rbm.png"],
      ["http://pragprog.com", "/sponsors/prag.png"],
    ].shuffle
  end

  def sponsor_url_logos
    [
      ["http://actblue.com", "/sponsors/actblue.png"],
      ["http://oreilly.com", "/sponsors/ora.gif"],
      ["http://rbmtechnologies.com", "/sponsors/rbm.png"],
      ["http://startupinstitute.com", "/sponsors/startup_institute.png"],
      ["http://terriblelabs.com", "/sponsors/terriblelabs.png"],
      ["http://thoughtbot.com", "/sponsors/thoughtbot.png"],
      ["http://www.launchacademy.com/", "/sponsors/LaunchAcademyLogo.png"],
      ["http://www.microsoftcambridge.com", "/sponsors/microsoftlogo.png"],
      ["http://www.vermonster.com", "/sponsors/vermonster.png"],
      ["http://www.visiblemeasures.com", "/sponsors/visible_measures.jpg"],
      ["https://generalassemb.ly/boston", "/sponsors/GA_logo.png"],
    ].shuffle
  end

  def load_instructors_from_yaml
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

    return [] unless File.size?("instructors.yml")
    YAML.load_file("instructors.yml").map do |instructor|
      instructor[1] = markdown.render(instructor[1])
      instructor
    end.sort
  end

  # redirects for changed locations
  get '/installfest' do
    redirect '/friday'
  end
    

  # This handles default routes for the markdown files in `views/`
  # Mostly added so that people who don't want to fuss with a Sinatra app can
  # get right in and start making markdown files.

  get '/*' do
    page = File.join params[:splat]

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

