FROM fedora:30
RUN dnf install postgresql-devel python-devel && pip install devpi-client
