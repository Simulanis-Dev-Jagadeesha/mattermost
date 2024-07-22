# Use the official Mattermost Team Edition image as a base
FROM mattermost/mattermost-team-edition:latest

# Set environment variables
ENV MM_CONFIG=/mattermost/config/config.json

# Expose the necessary ports
EXPOSE 8065 8067 8074 8075

# Copy the entrypoint script and configuration
COPY entrypoint.sh /mattermost-entrypoint.sh
COPY config.json /mattermost/config/config.json

# Set the entrypoint script as executable
RUN chmod +x /mattermost-entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/mattermost-entrypoint.sh"]
