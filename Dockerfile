FROM openshift/jenkins-slave-base-centos7:v3.11

RUN sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf && \
  sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/ovl.conf

COPY CentOS-Base.repo /etc/yum.repos.d/

WORKDIR /home

RUN rpm --rebuilddb && yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel \
  tk-devel gcc make && \
  wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz && \
  tar xf Python-3.6.0.tgz && cd Python-3.6.0 && \
  ./configure && make && make install
