require 'bundler'
ENV["RACK_ENV"] ||= "development"
Bundler.setup(:default, ENV["RACK_ENV"])

require 'sinatra'
require 'compass'
require 'redcarpet'
require 'haml'
require 'coderay'

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

configure do
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
end

get '/' do
  erb :index
end

get '/screen.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :"stylesheets/screen"
end

get '/coderay_github' do
  content_type 'text/css', :charset => 'utf-8'
  scss :"stylesheets/_coderay_github"
end

# This handles default routes for the markdown files in `views/`
# Mostly added so that people who don't want to fuss with a Sinatra app can
# get right in and start making markdown files.

get '/*' do
  page = File.join params[:splat]

  if File.exist? "views/#{page}.markdown"
    @markdown = true
    markdown page.intern
  else
    pass
  end
end
