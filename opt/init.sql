CREATE DATABASE wyt_lyj;
CREATE USER 'nathan'@'%' IDENTIFIED BY 'testpwd';
GRANT All privileges ON *.* TO 'nathan'@'%';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'recDBRoot';
use wyt_lyj;