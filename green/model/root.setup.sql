-- sqlplus / as sysdba 
create user green identified by code2 account unlock;
grant connect, resource to green;
alter user green quota unlimited on users;
exit

-- 1)Entrare nella directory di questo file e aprire la shell di comando 
--   (cmd sull'indirizzo della directory).

-- 2)Entrare su sqlplus come sysdba copiando il codice alla riga 1

-- 3)eseguire il seguente script con il comando "@root.setup.sql"


-- CHEERS! 