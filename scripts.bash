#!/bin/bash

cd ./repo

heroku login -i 

echo app name

read name

heroku create $name

heroku container:login

heroku container:push web --app $name

heroku container:release web --app $name

echo finished

