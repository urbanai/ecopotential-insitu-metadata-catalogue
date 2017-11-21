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
  && git clone https://github.com/geopython/pycsw.git

WORKDIR /pycsw
RUN pip install --upgrade pip
RUN pip install -e .
RUN pip install -r requirements-standalone.txt
RUN pip install pytest apipkg mock


COPY default.cfg .

RUN pycsw-admin.py -c setup_db -f default.cfg

EXPOSE 8000

CMD ["python", "/pycsw/pycsw/wsgi.py"]