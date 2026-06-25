FROM ghcr.io/linuxserver/webtop:ubuntu-kde

# Expose port 3000 (Railway will route this to a web URL)
EXPOSE 3000

# Set environment variables for the desktop login
ENV CUSTOM_USER=railwayuser
ENV PASSWORD=Password123

# Install the Windows 11 styling components and layout
RUN apt-get update && apt-get install -y wget git && \
    curl -s https://raw.githubusercontent.com/BoberPl/KDE-Windows11/main/install.sh | bash || true

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
