
CONNECT system/bikewake@//localhost:1521/BIKEWAKEPLUGABLEDATABASE

CREATE TABLESPACE BikeWakeTableSpace
    DATAFILE '/opt/oracle/oradata/BikeWakeTableSpace.dbf'
    SIZE 100m;
CREATE TEMPORARY TABLESPACE TempBikeWakeTableSpace
    TEMPFILE '/opt/oracle/oradata/BikeWakeTempTableSpace.dbf'
    SIZE 100m;
