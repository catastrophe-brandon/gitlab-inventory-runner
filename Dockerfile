FROM fedora:30
RUN dnf install -y python3.6 postgresql postgresql-devel python3-devel pipenv gcc git  
RUN dnf install -y libxcrypt-compat
RUN pip3 install devpi-client 
RUN pip3 install psycopg2-binary
RUN dnf install -y python3-psycopg2
RUN git -c http.sslVerify=false clone https://gitlab.cee.redhat.com/insights-qe/iqe-tests.git
RUN python3 -m venv venv
RUN source venv/bin/activate && pip install -U pip setuptools setuptools_scm wheel devpi-client \
 && devpi use http://devpi.ocp-sprout-02.cmqe.lab.eng.rdu2.redhat.com/test/psav --set-cfg \
    && pip install -e iqe-tests/
