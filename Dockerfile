FROM python:slim
RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install --no-install-recommends -y \
      curl \
    && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY m2m100_1.2B /app/
COPY download.sh /app/
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
ENV FLASK_APP=server.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 80
CMD ["gunicorn", "--bind=0.0.0.0:80", "wsgi:app"]
