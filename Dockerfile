
FROM fedora:27

RUN dnf install -y postgresql
RUN dnf install -y openssh-clients
RUN dnf install -y iputils

RUN mkdir waiverdb-backups
RUN chmod -R ugo+rw waiverdb-backups
