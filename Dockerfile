
FROM fedora:27

RUN dnf install -y postgresql
RUN dnf install -y openssh-clients
