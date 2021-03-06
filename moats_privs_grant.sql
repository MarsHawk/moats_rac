
set pause on

define moats_priv_target = &moats_priv_target;

prompt
prompt
prompt **************************************************************************
prompt **************************************************************************
prompt
prompt    MOATS Installer: Privileges
prompt    ===========================
prompt
prompt    This will grant required privileges to &moats_priv_target..
prompt
prompt    To continue press Enter. To quit press Ctrl-C.
prompt
prompt    (c) www.oracle-developer.net, www.e2sn.com
prompt
prompt **************************************************************************
prompt **************************************************************************
prompt
prompt

pause

grant create view to &moats_priv_target;
grant create type to &moats_priv_target;
grant create table to &moats_priv_target;
grant create procedure to &moats_priv_target;
grant execute on dbms_lock to &moats_priv_target;
grant select on v_$database to &moats_priv_target;
grant select on gv_$session to &moats_priv_target;
grant select on gv_$statname to &moats_priv_target;
grant select on gv_$sysstat to &moats_priv_target;
grant select on gv_$osstat to &moats_priv_target;
grant select on gv_$timer to &moats_priv_target;
grant select on gv_$sql to &moats_priv_target;

undefine moats_priv_target;

set pause off
