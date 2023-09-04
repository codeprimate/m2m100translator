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
ARG PORT=80
ENV PORT=${PORT}
EXPOSE ${PORT}
ENV FLASK_APP=server.py
ENV FLASK_RUN_HOST=0.0.0.0
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]
