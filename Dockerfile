FROM openshift3/ose-ansible:v3.11

USER root

RUN mkdir /ocp/ && \
    yum install -y git ansible-galaxy && \
    ansible-galaxy install -r casl-requirements.yml -p galaxy && \
    yum clean all

COPY . /ocp
