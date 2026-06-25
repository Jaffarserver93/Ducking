FROM dockur/windows:latest

# Expose the standard RDP port
EXPOSE 3389

# Copy our custom startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
