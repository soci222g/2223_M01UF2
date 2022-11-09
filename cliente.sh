#!/bin/bash

PORT="2223"
SERVER_AD="localhost"
echo "cliente TURIP"

echo "(1) SEND MSG: HOLI_TURIN"
echo "holi_TURIP 127.0.0.1" | nc $SERVER_AD $PORT

echo "(2) LISTENING chack handsacke"
MSG=`nc -l $PORT`

echo $MSG

if [ "$MSG" != "OK_TURIP" ]
then
	echo "ERROR 1: Handshacke incorrecto"
	exit 1
fi

echo "(5) send"

echo "FILE_NAME vaca.vaca" | nc $SERVER_AD $PORT 

echo "(6) LISENT and check file_name"
MSG=`nc -l $PORT`

echo $MSG

if [ "$MSG" != "OK_FILE_NAME" ]
then
	echo "ERROR 2: file_name incorrect"
	exit 2
fi

exit 0
