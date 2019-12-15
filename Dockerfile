FROM nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update \
    && apt-get install -y \
        git \
        software-properties-common

RUN add-apt-repository ppa:deadsnakes/ppa && apt-get update

RUN apt-get install -y python3.6 python3.6-dev python3-pip

COPY ./start.sh /start.sh
RUN chmod +x /start.sh

ENV TF_ENABLE_AUTO_MIXED_PRECISION=1

CMD [ "/start.sh" ]
