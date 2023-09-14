FROM centos:7

RUN yum -y update && yum clean all

RUN yum -y install httpd

RUN systemctl enable httpd

CMD [ "sbin/init" ]
