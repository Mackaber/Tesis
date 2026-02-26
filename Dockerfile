# Use the official TeX Live image (Debian-based)
FROM docker.io/texlive/texlive:latest

# 1. Install system prerequisites
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    curl \
    git \
    vim \
    ca-certificates \
    gnupg \
    locales \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set Locale (Crucial for Gemini CLI 0.24.5 to render text correctly)
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

# -----------------------------------------
# Node.js Setup
# -----------------------------------------
# We install Node.js globally using the official NodeSource script
# This is cleaner than nvm for a multi-user container
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

# Install Gemini CLI globally
RUN npm install -g @google/gemini-cli@0.24.5

# -----------------------------------------
# LaTeX Dependencies
# -----------------------------------------
WORKDIR /workspace

# Install packages
# We do this as root before switching users
RUN tlmgr update --self || true \
    && tlmgr install $(grep -v '^#' texpackages.txt | tr '\n' ' ')

# -----------------------------------------
# Volume Definitions
# -----------------------------------------
# This documents that these two directories are meant to be external
VOLUME ["/workspace", "/root/.config/google-gemini"]

# Default command
CMD ["/bin/bash"]