FROM python:3.12-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y
RUN pip install -r requriments.txt
CMD ["python3","app.py"]