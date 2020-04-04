require 'rubygems'
require 'bundler'

Bundler.require

get "/" do
    @randam = rand(6) + 1
    erb :index
end