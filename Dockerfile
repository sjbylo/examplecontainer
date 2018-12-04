FROM centos:7.5.1804
RUN yum -y install epel-release && yum -y install nginx && yum clean all -y
RUN sed -i -e "s/80/8080/" -e "s/^user nginx/#user nginx/" /etc/nginx/nginx.conf 

RUN chmod -R 777 /var/log/nginx /var/lib/nginx /run /usr/share/nginx/html

ENV GREETING Hello

EXPOSE 8080
USER 1001

ENTRYPOINT echo Greeting: $GREETING - hostname: $(hostname) > /usr/share/nginx/html/index.html && /usr/sbin/nginx -g 'daemon off;'
