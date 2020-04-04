require 'rubygems'
require 'bundler'

Bundler.require

set :database, {adapter: "sqlite3", database: "tweets.sqlite3"}

class Tweet < ActiveRecord::Base
end

get "/" do
    @tweets = Tweet.all
    erb :index
end

get "/tweets/new" do
    erb :new 
end

post "/tweets" do
    Tweet.create(params)
    redirect '/'
end

get "/tweets/:id/edit" do
  @tweet = Tweet.find(params[:id])
  erb :edit
end

patch '/tweets/:id' do
  tweet = Tweet.find(params[:id])
  tweet.update(params)
  redirect '/'
end