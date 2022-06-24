FROM python:alpine

WORKDIR /honeybadger

COPY . /honeybadger/

WORKDIR /honeybadger/server/

RUN pip install -r requirements.txt \
    python3 \
    import honeybadger \
    honeybadger.initdb('honeybadger', 'honeybadger')

EXPOSE '5000'

ENTRYPOINT [ "python3", "honeybadger.py" ]