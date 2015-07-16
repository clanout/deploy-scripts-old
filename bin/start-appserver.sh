#!/bin/bash

APP_SERVER_HOME=/home/ubuntu/codeX/projects/reaper/deploy/appserver

CONFIG_MODULE=$APP_SERVER_HOME/config
LOG_MODULE=$APP_SERVER_HOME/log
PERSISTENCE_MODULE=$APP_SERVER_HOME/persistence
CORE_MODULE=$APP_SERVER_HOME/core
SERVER_MODULE=$APP_SERVER_HOME/api

mvn -f $CONFIG_MODULE/pom.xml clean install
mvn -f $LOG_MODULE/pom.xml clean install
mvn -f $PERSISTENCE_MODULE/pom.xml clean install
mvn -f $CORE_MODULE/pom.xml clean install
mvn -f $SERVER_MODULE/pom.xml clean install

sudo cp $SERVER_MODULE/target/api.war $TOMCAT_APPSERVER_ROOT/reaper.war
