-- sqlplus / as sysdba 
create user green identified by code2 account unlock;
grant connect, resource to green;
alter user green quota unlimited on users;
exit
