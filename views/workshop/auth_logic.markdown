##Authentication



*Different options for auth


*Thinking about databases as "relational"


*Think about your table of topics - each has a unique numeric identifier (auto-increment primary key)


*We'll create another table that holds user information. Each row in that table also has an identifer


*Then we can set up a relationship between the tables: meeting has-a user, user (may) has-many meetings


*add a user id to the meeting table that we can use to cross-reference the user.


*in Rails, topic->user is called a "has_one" relationship, user->meeting is called a "has_many" relationship.


*So, users! name, email, ...


*TODO: move to install instructions: sudo gem install authlogic


*TODO: create a generator so folks don't have to do so much work for authentication (although the steps below could probably be made shorter by using generate scaffold)


*Now add the gem dependency in your config: (talk about what config/environment.rb )


#config/environment.rb



config.gem "authlogic"


*generate the user session

script/generate session user_session


exists  app/models/
create  app/models/user_session.rb


*look at app/models/user_session.rb


*generate the user model

script/generate model user email:string crypted_password:string password_salt:string persistence_token:string


exists  app/models/
exists  test/unit/
exists  test/fixtures/
create  app/models/user.rb
create  test/unit/user_test.rb
create  test/fixtures/users.yml
exists  db/migrate
create  db/migrate/20090603045630_create_users.rb


*edit migration to add :null => false

class CreateUsers < ActiveRecord::Migration
  def self.up


create_table :users do |t|
  t.string :email,              :null => false
  t.string :crypted_password,   :null => false
  t.string :password_salt,      :null => false
  t.string :persistence_token,  :null => false
  t.timestamps
  end


end


def self.down


drop_table :users


end
end


*edit the user model to add the plugin behavior

class User < ActiveRecord::Base
 acts_as_authentic
end


*One thing to note here is that this tries to take care of all the authentication grunt work, including validating your login, email, password, and token fields.


*generate sessions controller

script/generate controller user_sessions


   exists  app/controllers/
   exists  app/helpers/
   create  app/views/user_sessions
   exists  test/functional/
   exists  test/unit/helpers/
   create  app/controllers/user_sessions_controller.rb
   create  test/functional/user_sessions_controller_test.rb
   create  app/helpers/user_sessions_helper.rb
   create  test/unit/helpers/user_sessions_helper_test.rb


*create /views/users directory


*in that directory, create new.html.erb#Register


  account_path do |f| %>



*edit config/routes.rb

map.resource :user_session
map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route


*edit application controller

class ApplicationController < ActionController::Base
helper :all # include all helpers, all the time
protect_from_forgery # See ActionController::RequestForgeryProtection for detailsfilter_parameter_logging :password, :password_confirmation
  helper_method :current_user_session, :current_user


private


def current_user_session
  return @current_user_session if defined?(@current_user_session)
  @current_user_session = UserSession.find
end

def current_user
  return @current_user if defined?(@current_user)
  @current_user = current_user_session && current_user_session.user
end

def require_user
  unless current_user
    store_location
    flash[:notice] = "You must be logged in to access this page"
    redirect_to new_user_session_url
    return false
  end
end

def require_no_user
  if current_user
    store_location
    flash[:notice] = "You must be logged out to access this page"
    redirect_to account_url
    return false
  end
end

def redirect_back_or_default(default)
  redirect_to(session[:return_to] || default)
  session[:return_to] = nil
end

def store_location
  session[:return_to] = request.request_uri
end


end



 * user controller

# config/routes.rb
  map.resource :account, :controller => "users"
  map.resources :users

 * Create your UsersController:

script/generate controller users

 * add to user controller

def new


@user = User.new

respond_to do |format|
  format.html # new.html.erb
  format.xml  { render :xml => @user }
end


end


# POST /users
  # POST /users.xml
  def create


@user = User.new(params[:user])

respond_to do |format|
  if @user.save
    flash[:notice] = 'You successfully registered.'
    format.html { redirect_to topics_path }
    format.xml  { render :xml => @user, :status => :created, :location => @user }
  else
    format.html { render :action => "new" }
    format.xml  { render :xml => @topic.errors, :status => :unprocessable_entity }
  end
end


end



 * add to UserSessionsController

class UserSessionsController < ApplicationController
   before_filter :require_no_user, :only => [:new, :create]
   before_filter :require_user, :only => :destroy


def new


@user_session = UserSession.new


end


def create


@user_session = UserSession.new(params[:user_session])
if @user_session.save
  flash[:notice] = "Login successful!"
  redirect_back_or_default account_url
else
  render :action => :new
end


end


def destroy


current_user_session.destroy
flash[:notice] = "Logout successful!"
redirect_back_or_default new_user_session_url


end
 end



 * add to topic controller

before_filter :require_user, :only => [:new, :edit, :create, :update]

 * rake db:migrate
 * go to: localhost:3000/account/new
  * and register, see that you are at topics_path and show cookies to show that the session is being tracked by a cookie
 * add user_sessions view new.html.erb


#Login

 
     user_session_path do |f| %>



*add to topics layout

<% if !current_user %>


<%= link_to "Register", new_account_path %> |
 <%= link_to "Log In", new_user_session_path %> |

 <% else %>


<%= link_to "Logout", user_session_path, :method => :delete, :confirm => "Are you sure you want to logout?" %>


<% end %>


*make sure we save our progress


*git commit -a, commit message, save and close


*git push heroku master