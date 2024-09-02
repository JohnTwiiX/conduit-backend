FROM python:3.5.2-slim

WORKDIR /app

# Copy the directory
COPY . $WORKDIR

RUN apt-get update && \
    apt-get install -y build-essential gcc 

# Install requirements
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN python manage.py makemigrations && \
    python manage.py migrate


EXPOSE 8000

CMD ["gunicorn", "--workers", "3", "--bind", "0.0.0.0:8000", "conduit.wsgi:application"]
