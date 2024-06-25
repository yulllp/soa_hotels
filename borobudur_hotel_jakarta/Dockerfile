# Stage 1: Base Image
FROM python:3.8-slim as base

# Install necessary packages
RUN apt-get update && \
    apt-get install --yes curl netcat-openbsd

# Upgrade pip and install virtualenv
RUN pip3 install --upgrade pip
RUN pip3 install virtualenv

# Create a virtual environment
RUN virtualenv -p python3 /appenv

# Set environment variable for the virtual environment
ENV PATH=/appenv/bin:$PATH

# Add a user and create a directory for nameko
RUN groupadd -r nameko && useradd -r -g nameko nameko
RUN mkdir /var/nameko/ && chown -R nameko:nameko /var/nameko/

# ------------------------------------------------------------------------

# Stage 2: Builder Image
FROM base as builder

# Install build dependencies
RUN apt-get update && \
    apt-get install --yes build-essential autoconf libtool pkg-config \
    libgflags-dev libgtest-dev clang libc++-dev automake git libpq-dev

# Install auditwheel
RUN pip install auditwheel

# Copy the application code to the container
COPY . /application

# Set environment variables for pip wheel directory
ENV PIP_WHEEL_DIR=/application/wheelhouse
ENV PIP_FIND_LINKS=/application/wheelhouse
