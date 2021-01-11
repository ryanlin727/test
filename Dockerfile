# Version: 0.1.2
FROM python:3.6

WORKDIR /app

ARG PORT=80
ENV PORT $PORT

ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
ADD app.py /app/app.py


CMD ["python", "app.py"]

