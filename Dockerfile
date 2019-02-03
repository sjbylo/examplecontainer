#FROM centos:7.5.1804
#FROM centos:7
FROM centos:7.6.1810
RUN yum install epel-release -y && \
	yum update --setopt=tsflags=nodocs -y && \
	yum --setopt=tsflags=nodocs install nginx -y && \
	yum clean all -y

# Switch the port to listen on
RUN sed -i -e "s/80/8080/" -e "s/^user nginx/#user nginx/" /etc/nginx/nginx.conf 

# Ensure nginx can write where it needs to
RUN chmod -R 777 /var/log/nginx /var/lib/nginx /run /usr/share/nginx/html

# Set he default greeting
ENV GREETING Hello World 

EXPOSE 8080

# Ensure the continer will run as any user on OpenShift 
USER 1001

ENTRYPOINT echo $GREETING from $(hostname) > /usr/share/nginx/html/index.html && \
	/usr/sbin/nginx -g 'daemon off;'

