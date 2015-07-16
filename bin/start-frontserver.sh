#!/bin/bash

FRONT_SERVER_HOME=/home/ubuntu/codeX/projects/reaper/deploy/frontserver

SERVER_MODULE=$FRONT_SERVER_HOME/frontserver

mvn -f $SERVER_MODULE/pom.xml clean install

sudo cp $SERVER_MODULE/target/frontserver.war $TOMCAT_ROOT/reaper.war
