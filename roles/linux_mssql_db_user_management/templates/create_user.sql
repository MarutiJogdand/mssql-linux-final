-- Create login
use {{database_name}}
go
create login {{username}} with password = '{{password}}'

-- Create User 
create user {{username}} for login {{username}}

-- Add privilege to {{username}}
use {{database_name}}
GRANT {{privilege}} ON SCHEMA::dbo TO {{username}}
GRANT CREATE TABLE TO {{username}}
go
