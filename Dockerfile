
FROM python:3.7-buster
COPY . /app
WORKDIR /app
RUN apt-get update -y
RUN apt-get install virtualenv python3-pip -y
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8000
CMD python app.py