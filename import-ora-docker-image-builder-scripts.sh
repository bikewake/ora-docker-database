#!/bin/sh

rm -rf ora-docker-image-builder-scripts
mkdir  ora-docker-image-builder-scripts

#install oracle databse
git clone https://github.com/oracle/docker-images.git ./ora-docker-image-builder-scripts

