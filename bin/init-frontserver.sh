#!/bin/bash

DEPLOY_HOME=/home/ubuntu/codeX/projects/reaper/deploy
FRONT_SERVER_HOME=$DEPLOY_HOME/frontserver
CONF_HOME=$DEPLOY_HOME/conf/frontserver

sudo rm -r $FRONT_SERVER_HOME
mkdir $FRONT_SERVER_HOME

git clone git@bitbucket.org:reap3r/frontserver.git $FRONT_SERVER_HOME

echo "Deploying release configuration ..."
sudo cp $CONF_HOME/server.conf $FRONT_SERVER_HOME/frontserver/src/main/resources/conf/server.conf
sudo cp $CONF_HOME/db.conf $FRONT_SERVER_HOME/frontserver/src/main/resources/conf/db.conf