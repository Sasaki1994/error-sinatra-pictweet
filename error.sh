#!/bin/sh

cd /home/ec2-user/environment/
rm -rf error-sinatra-pictweet
git clone -b $1 https://github.com/Sasaki1994/error-sinatra-pictweet.git
cd /home/ec2-user/environment/error-sinatra-pictweet
bundle update