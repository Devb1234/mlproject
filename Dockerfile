FROM python:3.8-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN pip install -r requirements.txt

RUN pip install --no-cache-dir --default-timeout=100 -r requirements.txt

COPY . .

CMD ["python3","app.py"]