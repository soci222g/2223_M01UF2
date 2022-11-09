#!/bin/bash

PORT="2223"

echo "Server Transfer Unite Recursive International Protocol: TURIN"

echo "(0) LISTENING"
MSG=`nc -l $PORT` 
HOLI=`echo $MSG | cut -d " " -f 1`
IP_CLIENT=`echo $MSG | cut -d " " -f 2`

echo "(3)chack handsacke"
if [ "$HOLI" != "holi_TURIP" ]
then
	echo "ERROR 1: Handshake incorrecto"
	echo "KO_TURIP" | nc $IP_CLIENT $PORT
	exit 1
fi

	echo "OK_TURIP" | nc $IP_CLIENT $PORT


echo "(4) escuchar de nuevo"
MSG=`nc -l $PORT`

PREFIGO=`echo $MSG | cut -d " " -f 1`
FILE_NAME=`echo $MSG | cut -d " " -f 2`

echo "(7)chack file_name"
if [ "$PREFIGO" != "FILE_NAME" ]
then
	echo "ERROR 2: file_name incorrecto"
	echo "KO_FILE_NAME" | nc $IP_CLIENT $PORT
	exit 2
fi
	echo "OK_FILE_NAME" | nc $IP_CLIENT $PORT


exit 0
