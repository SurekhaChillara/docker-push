FROM centos:7

RUN yum update -y 
RUN yum install -y wget
CMD ["ping","127.0.0.1","-c","5"]
