FROM fedora:30
RUN dnf install -y postgresql-devel python-devel && pip install devpi-client
