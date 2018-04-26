FROM ubuntu:17.10

MAINTAINER Chris Kretler <ckretler@umich.edu>

RUN apt-get update \
	&& apt-get install -y python python-pip host iputils-ping \
	&& pip install requests
	
RUN apt-get install net-tools

WORKDIR /app/

COPY . /app/

CMD ["python", "pinger.py"]
