# Use the official n8n image as base
FROM n8nio/n8n:latest

# Install ffmpeg and yt-dlp for YouTube audio extraction
RUN apt-get update && apt-get install -y ffmpeg python3-pip \
    && pip3 install yt-dlp

# Expose the default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
