MSSQL Playbook

Playbook to install MSSQL Server, configure database, perform user management and update MSSQL server.

Requirement:

Operating System: CentOS 7
Hardware Configuration: 2GB RAM

Roles:

It contains 4 Roles -
	
1] linux_mssql_db_installation: This role will install mssql server (Developer edition) with specified version.

2] linux_mssql_db_configuration: This role will create and configure database and tables with default password encrypted with ansible-vault. 
(database name: bmw_db, table name: bmw_demo) 
									 
3] linux_mssql_db_user_management: This role will create user and grant permissions to it. 
It can also be used to update and delete user.
								   
4] linux_mssql_db_patching: This role will update mssql server to its latest available version.
	

Execution of Playbook:

MSSQL Playbook(main.yml file)
•name: mssql playbook 
 hosts: mssql 
 become: yes 
 roles:
	 - linux_mssql_db_installation
	 - linux_mssql_db_configuration
	 - linux_mssql_db_user_management
	 - linux_mssql_db_patching

You can perform above functionalities in one go using main.yml:
	
	ansible-playbook main.yml --ask-vault-pass

OR
	
Else you can perform one at a time using specific yml files with specified extra vars:

For eg:	If you want to delete compose user from database:
		
		ansible-playbook linux_mssql_db_user_management.yml --ask-vault-pass -e "action=delete username=compose"


Note: This playbook is tried and tested on CentOs 7 only.
