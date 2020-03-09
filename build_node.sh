#!/usr/bin/env bash

# https://github.com/khaledalam/awesome-docker-lamp


APP_NAME="awesome-docker-lamp-node-example"

PORT_HOST=8002
PORT_INNER=8002

PORT_HOST_SQL=3306
PORT_INNER_SQL=3306

REPO="git@github.com:khaledalam/awesome-docker-lamp.git";

# DB_NAME="khaledalamDBNAME";
# DB_SQL_FILE=examples/simple-php-with-mysql/dummy.sql;


echo "Start cloning...";
rm -rf ${APP_NAME} || true;
git clone ${REPO} ${APP_NAME};
echo "Finish cloning.";


echo "Start dockering...";
docker rm ${APP_NAME} --force || true;
docker run -d \
	-p ${PORT_HOST}:${PORT_INNER} \
	-v $PWD/examples/simple-node-app:/app \
	--name ${APP_NAME} khaledalam/awesome-docker-lamp:latest-with-node;
echo "Finish dockering.";




#echo "Start waiting for confirmation of mysql service";
#RET=1
#while [[ RET -ne 0 ]]; do
#    echo "=> Waiting for confirmation of MySQL service startup";
#    sleep 10;
#    mysql -uroot -e "status" > /dev/null 2>&1;
#    RET=$?;
#done
#echo "Finish waiting."
#sleep 10


# echo "Start Create Database Process...";
# docker exec -i ${APP_NAME} mysql -uroot -e "create database ${DB_NAME};";
# echo "Finish create Database.";


#echo "Start insert dummy data in DB...";
#docker exec -i ${APP_NAME} mysql ${DB_NAME} < ${DB_SQL_FILE};
#echo "Finish insertion.";

echo "Starting app...";
docker exec -i ${APP_NAME} bash -c "cd app; npm install express; npm install nodemon; npm run start;"

echo "Done! :)";

echo "visit: your_host_ip:${PORT_HOST} ex. 127.0.0.1:${PORT_HOST}"

