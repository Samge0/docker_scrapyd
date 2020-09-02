FROM python:3.7
ADD . /code
WORKDIR /code

VOLUME /data
VOLUME /images

COPY ./scrapyd.conf /etc/scrapyd/scrapyd.conf
EXPOSE 6800
RUN pip3 install -r requirements.txt
CMD scrapyd

