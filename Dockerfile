
FROM fedora:27

RUN dnf install -y postgresql
RUN dnf install -y openssh-clients
RUN dnf install -y iputils

RUN mkdir -p /var/tmp/waiverdb-backups
RUN chmod -R g=u /var/tmp/waiverdb-backups /etc/passwd

COPY uid_entrypoint.sh /
RUN chmod +x /entrypoint.sh

USER 1001

ENTRYPOINT /uid_entrypoint.sh
