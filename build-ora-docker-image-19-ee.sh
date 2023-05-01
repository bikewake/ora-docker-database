#!/bin/sh

cp ./19-ee-installer-zip-folder/LINUX.X64_193000_db_home.zip ora-docker-image-builder-scripts/OracleDatabase/SingleInstance/dockerfiles/19.3.0/

ora-docker-image-builder-scripts/OracleDatabase/SingleInstance/dockerfiles/./buildContainerImage.sh -e -v 19.3.0

