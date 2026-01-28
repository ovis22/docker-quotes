# Temporary stage to download fonts and keep the final image clean
FROM alpine:3.21 AS fonts

# Install wget and download custom FIGlet fonts
RUN apk add --no-cache wget
WORKDIR /usr/share/figlet/fonts
RUN for font in starwars Doom; do \
    wget https://raw.githubusercontent.com/xero/figlet-fonts/main/$font.flf; \
    done

# Final Runtime Image
FROM alpine:3.21
LABEL maintainer="ovis22"

# Install runtime packages and lolcat in a single layer to keep image small
# Added python3 and py3-pip for hybrid engine and colorful output
RUN apk add --no-cache bash figlet python3 py3-pip && \
    pip3 install --no-cache-dir --break-system-packages lolcat

# Copy fonts from the temporary builder stage
COPY --from=fonts /usr/share/figlet/fonts /usr/share/figlet/fonts

# Security Run as non-root user (appuser)
RUN adduser -D appuser
WORKDIR /home/appuser

# Copy scripts with correct ownership
COPY --chown=appuser:appuser print-message.sh .
COPY --chown=appuser:appuser print-message.py .
COPY --chown=appuser:appuser entrypoint.sh .

# Ensure scripts are executable for proper signal handling
RUN chmod +x print-message.sh entrypoint.sh

USER appuser

# Default configuration for the hybrid architecture
ENV FONT_NAME=standard \
    QUOTES="Hello DevOps World;Stay Colorful" \
    APP_MODE=bash

CMD ["./entrypoint.sh"]