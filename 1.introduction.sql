/*
    关系型数据库(数据表)：sqlit   db2     mysql    oracle   accrss    sql Server
    非关系型数据库(key-value的形式存储在文件)：mongodb   redis   memcache
*/

--- 查看当前用户 ---
select user();


--- 退出mysql ---
quit;
exit;


--- 创建账号 ---
--- 指定某一个IP ---
create user 'bruce'@'172.16.43.150';
--- 指定网段 ---
create user 'bruce'@'172.16.43.%';
--- 所有IP(机器)都能访问 ---
create user 'bruce'@'%';


--- 远程登陆指令 ---
mysql -u root -p password -h 172.16.43.150;


--- 查看某个账号的权限 ---
show grants for 'bruce'@'172.168.43.150';


--- 给账号授权 ---
grant all on *.* to 'bruce'@'%';
flush privileges;


--- 创建账号并授权 ---
grant all on *.* to 'bruce'@'%' identified by 'password'



/*
    SQL 结构性查询语言。 分成三种类型
    1. DDL  数据库定义语言：数据库，表，试图，索引，存储过程，比如：create drop alter
    2. DML  数据库操纵语言：插入数据 insert  删除 delete  更新 update  查询 select
    3. DCL  数据库控制语言：比如控制用户访问权限 grant revoke
*/

--- 创建一个数据库 ---
create database 'db1' charset utf8;
show databaes;
alter database 'db1' charset gbk;
drop database 'db1';


--- 操作表 ---
use db1;
create table 't1'(id int,name char);
show tables;
alter table 't1' modify 'name' char(3);
alter table 't1' change 'name' 'username' char(2);
drop table 't1';
















