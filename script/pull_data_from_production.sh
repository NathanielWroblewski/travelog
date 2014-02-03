#!/bin/bash

#import the latest dump from production
heroku pgbackups:capture --expire --app travelog-production
curl -o latest.dump `heroku pgbackups:url --app travelog-production`
pg_restore --verbose --clean --no-acl --no-owner -h localhost -d travelog_development latest.dump
