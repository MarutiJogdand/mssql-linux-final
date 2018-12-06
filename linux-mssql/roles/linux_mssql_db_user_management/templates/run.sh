#!/bin/sh


if [ {{action}} == 'create' ]
then	
	/opt/mssql-tools/bin/sqlcmd -U sa -P Canopy1! -i /tmp/create_user.sql

elif [ {{action}} == 'update' ]
then	
	/opt/mssql-tools/bin/sqlcmd -U sa -P Canopy1! -i /tmp/updateUser.sql


elif [ {{action}} == 'delete' ]
then	
	/opt/mssql-tools/bin/sqlcmd -U sa -P Canopy1! -i /tmp/dropUser.sql
else
	echo 'Please specify action as create , delete , update'
fi




