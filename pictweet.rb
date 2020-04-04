require 'rubygems'
require 'bundler'

Bundler.require

set :database, {adapter: "sqlite3", database: "tweets.sqlite3"}

class Tweet < ActiveRecord::Base
end

get "/" do
    @tweets = tweet.all
    erb :index
end

get "/tweets/new" do
    erb :new 
end

post "/tweets" do
    Tweet.create(params)
    redirect '/'
end