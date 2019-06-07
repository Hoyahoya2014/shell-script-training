#! /bin/bash

echo "WELCOME $1 $2"
echo "Is Time : $(date +"%r")"

read -p "Enter Your Dirname : " DIR_NAME


if [ -d $DIR_NAME ]
then
	echo "DIR EXITS"
else
	mkdir $DIR_NAME
	echo " $DIR_NAME is created"
fi

read -p "ENTER YOUR FILENAME TO READ : " FILE_NAME_READ
if [ -e $FILE_NAME_READ ]
then
	if [ -s $FILE_NAME_READ ]
	then

		cat $FILE_NAME_READ
	else
		echo "File is Emty"
	fi
	
else
	echo "File Noting Exitet"
fi
