FROM nvidia/cuda:9.0-base

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa && apt-get update
RUN apt-get install -y python3.6 python3.6-dev python3-pip

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

CMD [ "/start.sh" ]

# COPY requirements.txt /tmp/

# RUN pip install -r /tmp/requirements.txt


