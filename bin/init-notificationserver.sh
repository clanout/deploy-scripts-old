#!/bin/bash

DEPLOY_HOME=/home/ubuntu/codeX/projects/reaper/deploy
NOTIFICATION_SERVER_HOME=$DEPLOY_HOME/notificationserver
CONF_HOME=$DEPLOY_HOME/conf/notificationserver

sudo rm -r $NOTIFICATION_SERVER_HOME
mkdir $NOTIFICATION_SERVER_HOME

git clone git@bitbucket.org:reap3r/notificationserver.git $NOTIFICATION_SERVER_HOME

echo "Deploying release configuration ..."
sudo cp $CONF_HOME/db.conf $NOTIFICATION_SERVER_HOME/src/main/resources/conf/db.conf
sudo cp $CONF_HOME/gcm.conf $NOTIFICATION_SERVER_HOME/src/main/resources/conf/gcm.conf
sudo cp $CONF_HOME/log4j.properties $NOTIFICATION_SERVER_HOME/src/main/resources/log4j.properties
