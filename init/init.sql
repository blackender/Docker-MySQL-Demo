use mysql;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'yourpassword';
create database wyt_lyj;
use wyt_lyj;
create table pattern
(
    id int auto_increment primary key,
    pattern_id int not null,
);
insert into user values(1, 2);