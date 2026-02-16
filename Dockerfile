# Use official n8n image (Alpine-based)
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install ffmpeg and python3 + pip in Alpine
RUN apk add --no-cache ffmpeg python3 py3-pip

# Install yt-dlp via pip
RUN pip3 install yt-dlp

# Switch back to n8n user
USER node

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
