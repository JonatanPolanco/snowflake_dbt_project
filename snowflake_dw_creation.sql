USE ROLE ACCOUNTADMIN;
CREATE WAREHOUSE dbt_wh with WAREHOUSE_SIZE = 'x-small';
CREATE DATABASE dbt_db;
CREATE ROLE dbt_role;

show grants on warehouse dbt_wh;
grant usage on warehouse dbt_wh to role dbt_role;
show grants on warehouse dbt_wh;
grant role dbt_role to user jpolanco;
grant all on database dbt_db to role dbt_role;

use role dbt_role;
create schema dbt_schema;