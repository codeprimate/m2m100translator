#!/bin/bash

PORT=${PORT:-3000}

gunicorn --bind 0.0.0.0:$PORT wsgi:app
