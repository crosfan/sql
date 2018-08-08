-- switch "Results to Text" Ctrl+T
set nocount on;
select
	'use ' + name + ';' + char(10) + 'alter database ' + name + ' set recovery simple;' + char(10) + char(13)
from
    sys.databases
where
    recovery_model_desc <> 'SIMPLE';
