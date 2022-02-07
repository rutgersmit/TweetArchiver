FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . ./

LABEL maintainer="rutger.smit@gmail.com"

ENV TWITTER_HANDLES='account_a,account_b'
ENV TWITTER_INCLUDE_RETWEETS=False
ENV TWITTER_EXCLUDE_REPLIES=False
ENV SELENIUMURL='http://192.168.100.10:4444/wd/hub'
ENV CHECKINTERVAL=120
ENV CONSUMER_KEY=
ENV CONSUMER_SECRET=
ENV ACCESS_TOKEN=
ENV ACCESS_TOKEN_SECRET=

CMD ["main.py"]
ENTRYPOINT ["python3"]

HEALTHCHECK CMD curl --fail https://twitter.com/ || exit 1
