spool loginvalid.txt
set define off
prompt creating list of invalid objects

Set heading off;
set feedback off;
Set lines 999;

spool invalid.sql

SELECT    'alter '
       || DECODE (object_type, 'PACKAGE BODY', 'PACKAGE', object_type)
       || ' '
       || object_name
       || ' compile '
       || DECODE (object_type, 'PACKAGE BODY', ' body;', ';')
  FROM user_objects
 WHERE     object_type IN ('FUNCTION',
                           'PACKAGE',
                           'PACKAGE BODY',
                           'PROCEDURE',
                           'TRIGGER',
                           'VIEW',
                           'SYNONYM')
       AND status <> 'VALID';

spool off

set heading on;
set feedback on;

spool loginvalid.txt append

prompt compiling invalid objects
set echo on;

@invalid.sql

set echo off;
spool off


exit