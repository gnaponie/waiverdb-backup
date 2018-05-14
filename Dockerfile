
FROM fedora:27

RUN dnf install -y postgresql
RUN dnf install -y openssh-clients
RUN dnf install -y iputils
RUN dnf install -y nfs-utils

RUN mkdir -p /var/tmp/waiverdb-backups 
RUN mkdir -p /var/tmp/wheretomount
RUN chgrp -R 0 /var/tmp/waiverdb-backups /etc/passwd /var/tmp/wheretomount && \
    chmod -R g=u /var/tmp/waiverdb-backups /etc/passwd /var/tmp/wheretomount

# TODO: this should be nice to put in an env variable... later
RUN echo "bareos-01.eng.rdu2.redhat.com:/backups/bareos/backup_upshift /var/tmp/wheretomount nfs rw,noauto,user 0 0" >> /etc/fstab
