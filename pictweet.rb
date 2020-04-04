require 'rubygems'
require 'bundler'

Bundler.require

gets "/" do
    @random = rand(6) + 1
    erb :index
end