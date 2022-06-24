FROM python:alpine

RUN mkdir /honeybadger

COPY . /honeybadger/

WORKDIR /honeybadger/server/

RUN pip install -r requirements.txt 

RUN python3 start.py

EXPOSE 5000

ENTRYPOINT [ "python3", "honeybadger.py" ]