FROM centos:7
MAINTAINER jakub.dlugolecki@gmail.com

ENV KUBESPRAY_REQUIREMENTS_URL="https://raw.githubusercontent.com/kubernetes-incubator/kubespray/v2.7.0/requirements.txt"

RUN yum -y install  epel-release && \
    yum -y install ansible-2.6.6-1 git openssh-clients python-pip && \
    curl -f "${KUBESPRAY_REQUIREMENTS_URL}" -o /tmp/r.txt && \
    pip --no-cache-dir install -r /tmp/r.txt
