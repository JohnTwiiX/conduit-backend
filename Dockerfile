FROM python:3.6-slim

WORKDIR /app

# Copy the directory
COPY . $WORKDIR

RUN apt-get update && \
    apt-get install -y build-essential gcc


# Install requirements
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    chmod +x /app/entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/app/entrypoint.sh"]
