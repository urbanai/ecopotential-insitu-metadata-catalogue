FROM ubuntu:16.04
MAINTAINER Jordi Prados <jordiprados90@gmail.com>

WORKDIR /
RUN apt-get update -y && apt-get install -y \
  git \
  python \
  python-dev \
  python-pip \
  libxslt-dev \
  libxml2-dev \
  libgeos-dev \
  zlib1g-dev \
  postgresql \
  postgresql-contrib \
  && git clone https://github.com/geopython/pycsw.git

WORKDIR /pycsw
COPY ./docker/wait_postgres.sh .
RUN chmod 777 wait_postgres.sh
RUN pip install --upgrade pip
RUN pip install -e .
RUN pip install -r requirements-standalone.txt
RUN pip install pytest apipkg mock psycopg2

COPY ./docker/default.cfg .

COPY ./src/pycsw .
EXPOSE 8081
CMD ["sh", "/pycsw/wait_postgres.sh", "postgres", "python", "/pycsw/pycsw/wsgi.py", "8081"]
