FROM python:3

ADD machineInfo.py /

RUN pip install pystrich

CMD [ "python", "./machineInfo.py" ]

EXPOSE 3000