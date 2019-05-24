FROM python:3

ADD . /Dir

WORKDIR /Dir

RUN pip install pystrich

CMD [ "python", "./app.py" ]

EXPOSE 9000