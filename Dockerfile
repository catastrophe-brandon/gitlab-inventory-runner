FROM fedora:30
RUN dnf install -y postgresql-devel python-devel pipenv git && pip install devpi-client
