# Getting Started with Docker Oracle Database Image Builder

This project is based on [Github Oracle Docker Image Builder Scripts](https://github.com/oracle/docker-images/tree/main/OracleDatabase/SingleInstance).

Known issue for Oracle database docker container [ORA-12637: Packet receive failed](https://github.com/oracle/docker-images/blob/main/OracleDatabase/SingleInstance/FAQ.md#ora-12637-packet-receive-failed).

Prerequisite [Docker](https://www.docker.com/) and [GitBash](https://git-scm.com/downloads)

## Step one: download Oracle Docker builder scripts

### `./import-ora-docker-image-builder-scripts.sh`

Now You have Oracle Docker builder scripts on Your local hard drive.

## Step two: download Oracle database installer file from Oracle website.

Get Oracle Database 19c for Linux x86-64 zip file from [Oracle Database Software Downloads](https://www.oracle.com/database/technologies/oracle-database-software-downloads.html).
You will need Oracle account, and You better accept Oracle License for Enterprise Edition.
Please move file LINUX.X64_193000_db_home.zip from your download folder here to folder 19-ee-installer-zip-folder/

## Step three: build docker image from Oracle zip installer with Oracle builder scripts

### `./build-ora-docker-image-19-ee.sh`

Builder process could take more than one minute.
Now You have Oracle Docker builder scripts on Your local hard drive.
Verify image is present in your local docker repository.

### `docker image ls`

You should see repository **oracle/database** with tag **19.3.0-ee**

## Step four: tag and push docker image, (this step is optional)

### `./tag-ora-19-ee-bikewake.sh`

Tag prefix here is bikewake which is registration name in docker hub, so pushing with 

### `./push-ora-19-ee-bikewake.sh`

will work only if you have proper docker hub registration, please review scripts and use your own tag.

## Step five: run docker image with docker compose

TODO: more details here

the first terminal window run docker-compose up

the second terminal window run sql developer

in the third terminal window verify docker ps and see running container with name ora-database

### `docker exec ora-database ls ../../opt/oracle/oradata/dbconfig/ORCLCDB`


### `docker exec ora-database cat  ../../opt/oracle/oradata/dbconfig/ORCLCDB/sqlnet.ora`


### `docker exec ora-database "/bin/sh" -c "echo DISABLE_OOB=ON>>//opt/oracle/oradata/dbconfig/ORCLCDB/sqlnet.ora"`

restart docker compose



