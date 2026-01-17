# Use a lightweight Alpine base image
FROM alpine:latest

# Install required packages and download Figlet fonts in a single RUN to keep image layers small.
# Using apk --no-cache avoids storing the package index so no extra cache cleanup is needed.
# Fonts provided by: https://github.com/xero/figlet-fonts
# Added python3 to support the new hybrid architecture.
RUN apk add --no-cache bash figlet wget python3 && \
    mkdir -p /usr/share/figlet/fonts && \
    cd /usr/share/figlet/fonts && \
    for font in starwars Doom; do \
    wget https://raw.githubusercontent.com/xero/figlet-fonts/main/$font.flf; \
    done

# Create a non-root user for security
RUN adduser -D appuser
WORKDIR /home/appuser

# Copy script with correct ownership
COPY --chown=appuser:appuser print-message.sh .
COPY --chown=appuser:appuser print-message.py .
COPY --chown=appuser:appuser entrypoint.sh .

# Make scripts executable (important for entrypoint!)
RUN chmod +x print-message.sh entrypoint.sh

# Switch to the non-root user
USER appuser

# Set default environment variables
ENV FONT_NAME=standard
ENV QUOTES="Hello World"
ENV APP_MODE=bash

# Use ENTRYPOINT/CMD to run the script
CMD ["./entrypoint.sh"]
