require 'rubygems'
require 'bundler'

Bundler.require

set :database, {adapter: "sqlite3", database: "tweets.sqlite3"}

class Tweet < ActiveRecord::Base
end

get "/" do
    @random = rand(6) + 1
    erb :index
end

get "/tweets/new" do
    erb :new 
end

post "/tweets" do
    Tweet.create(param)
    redirect '/'
end