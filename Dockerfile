FROM python:3

COPY . /demo

WORKDIR /demo

RUN pip install -r requirements.txt

RUN mkdir volume

RUN echo "This is Demo file" >> ./volume/file.txt

EXPOSE 9000

CMD python ./app.py
