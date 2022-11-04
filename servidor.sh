#!/bin/bash

echo "servidor Transfer Unite Recursive International Protocol: TURIP"
#!/bin/bash

echo "Server Transfer Unite Recursive International Protocol: TURIN"

echo "(0) LISTENING"
MSG=`nc -l 2223` 
HOLI= $MSG | cut -d " " -f 1 

if [ "$HOLI" != "holi_TURIP" ]
then
	echo "ERROR 1: Handshake incorrecto"
	exit 1
fi



