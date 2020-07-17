FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install build-essential unzip software-properties-common -y
RUN apt-get install git ffmpeg libopus-dev libffi-dev libsodium-dev python3-pip -y

RUN mkdir /MusicBot
RUN git clone https://github.com/Just-Some-Bots/MusicBot.git /MusicBot -b master

RUN python3 -m pip install -U pip
RUN python3 -m pip install -U -r /MusicBot/requirements.txt

CMD ["/MusicBot/run.sh"]
