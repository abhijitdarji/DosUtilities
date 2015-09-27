spool &1\log.txt
set define off
prompt Start of sql running.. into BuildAll.sql

@BuildAllLast.sql

prompt end of BuildAll.sql
commit;

spool off


exit