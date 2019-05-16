FROM bcit/centos:7
# vim: syntax=dockerfile

LABEL maintainer="jesse_weisner@bcit.ca"
LABEL version="3.11.0"

ENV VERSION "3.11.0"

COPY CentOS-OpenShift-Origin.repo /etc/yum.repos.d/
COPY CentOS-OpenShift-Origin311.repo /etc/yum.repos.d/
ADD https://www.centos.org/keys/RPM-GPG-KEY-CentOS-SIG-PaaS /etc/pki/rpm-gpg/

RUN yum -y --setopt tsflags=nodocs --setopt timeout=5 install \
    origin-clients-3.11.0
