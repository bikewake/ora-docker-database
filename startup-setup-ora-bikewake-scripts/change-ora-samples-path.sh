#!/bin/sh

rm -rf temp-db-sample-schemas-19.2

rm -rf dockerfile-sample-builder/temp-db-sample-schemas-19.2

cp -R db-sample-schemas-19.2/ temp-db-sample-schemas-19.2/

dir="temp-db-sample-schemas-19.2"

find "$dir" -type f -name "*.sql" | while read file; do
    if [ -r "$file" ] && [ -w "$file" ]; then
        # Process the file here
        echo "$file"
        sed -i 's|__SUB__CWD__|/opt/oracle/bikewake/db-sample-schemas-19.2|g' $file
    else
        # Skip the file and print an error message
        echo "Skipping file $file due to permission denied"
    fi
done

sed -i 's|DEFINE password_system     = &1|DEFINE password_system     =bikewake|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE password_sys        = &2|DEFINE password_sys        =bikewake|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE password_hr         = &3|DEFINE password_hr         =hr|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE password_oe         = &4|DEFINE password_oe         =oe|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE password_pm         = &5|DEFINE password_pm         =pm|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE password_ix         = &6|DEFINE password_ix         =ix|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE password_sh         = &7|DEFINE password_sh         =sh|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE password_bi         = &8|DEFINE password_bi         =bi|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE default_ts          = &9|DEFINE default_ts          =BikeWakeTableSpace|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE temp_ts             = &10|DEFINE temp_ts             =TempBikeWakeTableSpace|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE logfile_dir         = &11|DEFINE logfile_dir         =/opt/oracle/bikewake/logs|g' temp-db-sample-schemas-19.2/mksample.sql
sed -i 's|DEFINE connect_string     = &12|DEFINE connect_string     =//localhost:1521/BikeWakePlugableDatabase|g' temp-db-sample-schemas-19.2/mksample.sql

mv ${dir} dockerfile-sample-builder/