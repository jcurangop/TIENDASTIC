@echo off
call mvn clean package
call docker build -t com.mycompany/TiendasTIC .
call docker rm -f TiendasTIC
call docker run -d -p 9080:9080 -p 9443:9443 --name TiendasTIC com.mycompany/TiendasTIC