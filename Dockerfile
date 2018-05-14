
FROM fedora:27

RUN dnf install -y postgresql
RUN dnf install -y openssh-clients
RUN dnf install -y iputils
RUN dnf install -y nfs-utils

RUN echo "/export bareos-01.eng.rdu2.redhat.com(rw,async,no_root_squash,no_subtree_check)" >> /etc/exports
RUN exportfs -a

RUN mkdir -p /var/tmp/waiverdb-backups 
#RUN mkdir -p ~/.ssh
RUN chgrp -R 0 /var/tmp/waiverdb-backups /etc/passwd && \
    chmod -R g=u /var/tmp/waiverdb-backups /etc/passwd
