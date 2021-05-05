CREATE USER 'nathan'@'%' IDENTIFIED BY 'testpwd';
GRANT All privileges ON *.* TO 'nathan'@'%';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'recDBRoot';
CREATE DATABASE wyt_lyj;
USE wyt_lyj;
CREATE TABLE patterns
(
    pic_id int(10) primary key COMMENT '图片ID',
    pattern_id int not null COMMENT '款式ID',
    pattern_code varchar() not null,
);
CREATE TABLE dncs
(
    pic_id int primary key COMMENT '图片ID',
    dynasty_id int(1) COMMENT '朝代ID',
    dynasty_code varchar(8) COMMENT '朝代编码',
    color_code varchar(8) COMMENT '颜色编码',
);