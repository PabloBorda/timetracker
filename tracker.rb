require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/static_assets'
require 'sinatra/assetpack'
require 'sinatra/ratpack'
require 'net/http'
require 'uri'
require 'sinatra/activerecord'
require 'rack/rewrite'
require 'time'

set :public_folder, 'public'

get('/javascripts/timetracker.js') { redirect to('/tracker/javascripts/timetracker.js') }
get('/javascripts/jquery.timer.js') { redirect to('/tracker/javascripts/jquery.timer.js') }
get('/javascripts/jquery.min.js') { redirect to('/tracker/javascripts/jquery.min.js') }
get('/stylesheets/style.css') { redirect to('/tracker/stylesheets/style.css') }


get('/tracker/logout') { redirect to('/logout') }
get('/tracker/login') { redirect to('/login') }
get('/tracker/my_tasks') { redirect to('/my_tasks') }
get('/tracker/all_tasks') { redirect to('/all_tasks') }
get('/tracker') { redirect to('/') }
get('/tracker/track') { redirect to('/track') }
get('/tracker/reset') { redirect to('/reset') }


set :database, 'mysql2://root:justice@dev.smartbands.com.ar:3306/timetracker'
enable :sessions

class User < ActiveRecord::Base
  
end

class Task < ActiveRecord::Base 
  
end


get '/logout' do
  erb :tracker
end

post '/login' do
  session[:user] = params[:user].to_s
  session[:pass] = params[:pass].to_s
  session[:start] = Time.now
  if (!(User.find_by_name_and_password(session[:user].to_s,session[:pass].to_s)).nil?)
    erb :welcome
  else
    erb :tryagain
  end
end


get '/my_tasks' do
  out = ""
  tasks = Task.find_all_by_user_id(User.find_by_name(session[:user].to_s).id)
    out = out + "<table border=\"1\"><tr><td>Task id</td><td>Start DateTime</td><td>Amoun in Hours</td><td>Comments</td></tr>"
  tasks.each do |t|
    out = out + "<tr><td>" + t.id.to_s + "</td><td>" + t.begin.to_s + "</td><td>" + t.duration.to_s + "</td><td>" + t.comment.to_s + "</td></tr>"
  end
  out = out + "</table>"
end


get '/all_tasks' do
  users = User.find(:all)
  out = ""
  users.each do |u|
    out = "<div><img src=\"" + u.url.to_s + "\" width=\"100\" height=\"100\"/><br/><h1><label>" + u.name + "</label></h1></div><br/>"
    tasks = Task.find_all_by_user_id(u.id)
    out = out + "<table border=\"1\"><tr><td>Task id</td><td>Start DateTime</td><td>Amount in Hours</td><td>Comments</td></tr>"
    tasks.each do |t|
      out = out + "<tr><td>" + t.id.to_s + "</td><td>" + t.begin.to_s + "</td><td>" + t.duration.to_s + "</td><td>" + t.comment.to_s + "</td></tr>"      
    end
    out = out + "</table>"

  end 
  out
end



get '/reset' do
  session[:start] = Time.now
end




get '/' do
  erb :tracker

end

get '/track' do
  session[:end] = Time.now
  #duration is the amount of hours
  session[:duration] = (((session[:end] - session[:start])/60)/60)
  t = Task.create({:comment => params[:description],:duration => session[:duration],:user_id => params[:uid],:begin => params[:begin]})
  t.save
  session[:start] = session[:end]
end
