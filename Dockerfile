FROM centos:7
MAINTAINER jakub.dlugolecki@gmail.com

RUN yum -y install ansible git openssh-clients
