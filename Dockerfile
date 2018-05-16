
FROM fedora:27

RUN dnf install -y postgresql
RUN dnf install -y openssh-clients

RUN mkdir -p /var/tmp/waiverdb-backups 
RUN chgrp -R 0 /var/tmp/waiverdb-backups /etc/passwd && \
    chmod -R g=u /var/tmp/waiverdb-backups /etc/passwd
