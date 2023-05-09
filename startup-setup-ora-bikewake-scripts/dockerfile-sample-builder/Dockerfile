FROM bikewake/ora-database:19.3.0-ee

COPY  fix-ora-network-config.sh /opt/oracle/scripts/setup
COPY 01_create_table_spaces.sql /opt/oracle/scripts/setup

RUN mkdir -p /opt/oracle/bikewake/

COPY temp-db-sample-schemas-19.2 /opt/oracle/bikewake/db-sample-schemas-19.2

RUN cp /opt/oracle/bikewake/db-sample-schemas-19.2/mksample.sql /opt/oracle/scripts/startup/10_mksample.sql

