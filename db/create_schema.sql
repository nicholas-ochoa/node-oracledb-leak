-- user sql
create user testdb identified by testdb default tablespace users temporary tablespace temp;

-- quotas
alter user testdb quota unlimited on users;

-- roles
grant connect, resource, select_catalog_role to testdb;

-- system privileges
grant
  execute any procedure,
  execute any program,
  execute any type,
  create any job,
  create any context,
  select any sequence,
  select any dictionary,
  select any table,
  insert any table,
  delete any table,
  update any table,
  comment any table,
  manage scheduler,
  create job,
  create trigger,
  create materialized view,
  create indextype,
  create view,
  create session,
  create table,
  create type,
  create synonym,
  create sequence,
  create procedure,
  create any directory,
  drop any directory
to
  testdb;
