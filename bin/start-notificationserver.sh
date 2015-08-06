#!/bin/bash

NOTIFICATION_SERVER_HOME=/home/ubuntu/codeX/projects/reaper/deploy/notificationserver

SERVER_MODULE=$NOTIFICATION_SERVER_HOME/notificationserver

mvn -f $SERVER_MODULE/pom.xml clean install

sudo cp $SERVER_MODULE/target/notificationserver.war $TOMCAT_APPSERVER_ROOT/notification/reaper.war
