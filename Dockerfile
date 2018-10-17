FROM centos:7.5.1804
RUN yum -y install epel-release && yum -y install nginx && yum clean all -y && sed -i "s/80/8080/" /etc/nginx/nginx.conf 
RUN echo Hello World >  /usr/share/nginx/html/index.html
RUN chmod -R 777 /var/log/nginx /var/lib/nginx /run
EXPOSE 8080
USER 1001
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;'
