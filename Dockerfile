FROM python:3.5.2-slim

WORKDIR /app

# Copy the directory
COPY . $WORKDIR

RUN apt-get update && \
    apt-get install -y build-essential gcc 

# Install requirements
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python manage.py makemigrations && \
    python manage.py migrate && \
    python manage.py createsuperuser --noinput

EXPOSE 8000

ENTRYPOINT ["gunicorn", "--workers", "3", "--bind", "0.0.0.0:8000", "conduit.wsgi:application"]
