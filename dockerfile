FROM python:alpine

WORKDIR /honeybadger

COPY . /honeybadger/

WORKDIR /honeybadger/server/

RUN python3 \
    import honeybadger \
    honeybadger.initdb('honeybadger', 'honeybadger')

ENTRYPOINT [ "python3", "honeybadger.py" ]