
FROM fedora:27

RUN dnf install -y postgresql

RUN mkdir waiverdb-backups
RUN chmod -R ugo+rw waiverdb-backups
