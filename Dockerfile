FROM n8nio/n8n:latest

USER root

# Install system dependencies
RUN apk add --update --no-cache \
    python3 \
    py3-pip \
    gcc \
    python3-dev \
    musl-dev \
    curl \
    ffmpeg

# Install yt-dlp
RUN pip3 install --no-cache-dir yt-dlp

USER node

# Set environment variables
ENV N8N_LOG_LEVEL=info

EXPOSE 5678
