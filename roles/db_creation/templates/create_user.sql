-- Create login 
create login {{username}} with password = '{{password}}'

-- Create User 
create user {{username}} for login {{username}}

-- Add privilege to {{username}}
GRANT {{privilege}} ON {{table_name}} TO {{username}};




