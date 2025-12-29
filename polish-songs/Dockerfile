# Use a lightweight Alpine base image
FROM alpine:latest

# Install dependencies and clean cache in one layer
RUN apk add --no-cache bash figlet wget

# Download custom font (can be combined with previous RUN to save space)
RUN wget http://www.jave.de/figlet/fonts/details/starwars.flf -O /usr/share/figlet/starwars.flf

# Create a non-root user for security and set working directory
RUN adduser -D appuser
WORKDIR /home/appuser

# Copy script with correct ownership
COPY --chown=appuser:appuser print-message.sh .
RUN chmod +x print-message.sh

# Switch to the non-root user
USER appuser

# Use ENTRYPOINT for tool-like containers
ENTRYPOINT ["./print-message.sh"]