FROM redhat/ubi8:latest

RUN yum install httpd -y 

COPY finter-html/  /var/www/html/

CMD ["usr/sbin/httpd", "-D", "FOREGROUND"] 
EXPOSE 80
