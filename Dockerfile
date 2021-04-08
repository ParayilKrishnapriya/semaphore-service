FROM python:3.8.6-alpine3.12

RUN mkdir -p /app
COPY main.py /app
COPY requirements.txt /app
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt
EXPOSE 80
ENTRYPOINT [ "python", "/app/main.py" ]