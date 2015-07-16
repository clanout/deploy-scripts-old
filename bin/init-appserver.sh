#!/bin/bash

DEPLOY_HOME=/home/ubuntu/codeX/projects/reaper/deploy
APP_SERVER_HOME=$DEPLOY_HOME/appserver
CONF_HOME=$DEPLOY_HOME/conf/appserver

sudo rm -r $APP_SERVER_HOME
mkdir $APP_SERVER_HOME

git clone git@bitbucket.org:reap3r/appserver.git $APP_SERVER_HOME

echo "Deploying release configuration ..."
sudo cp $CONF_HOME/chat.conf $APP_SERVER_HOME/config/src/main/resources/chat.conf
sudo cp $CONF_HOME/db.conf $APP_SERVER_HOME/config/src/main/resources/db.conf
sudo cp $CONF_HOME/log4j.properties $APP_SERVER_HOME/log/src/main/resources/log4j.properties