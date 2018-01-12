# Dockerized hello world python app

# See this page for an example:
# http://containertutorials.com/docker-compose/flask-simple-app.html

# Also pretty handy:
# https://github.com/wsargent/docker-cheat-sheet

FROM ubuntu:latest

MAINTAINER Jeff Walker <jeff@nhwalker.com>

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential

RUN pip install flask

COPY . /app
WORKDIR /app

# Flask web server port
EXPOSE 5000

ENTRYPOINT ["python"]

CMD [ "hello.py" ]
