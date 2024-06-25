# Stage 1: Base Image
FROM python:3.8-slim as base

# Install necessary packages
RUN apt-get update && \
    apt-get install --yes curl netcat-openbsd libmariadb-dev

# Upgrade pip and install virtualenv
RUN pip3 install --upgrade pip
RUN pip3 install virtualenv

# Create a virtual environment
RUN virtualenv -p python3 /appenv

# Set environment variable for the virtual environment
ENV PATH=/appenv/bin:$PATH

# Add a user and create a directory for nameko
RUN groupadd -r nameko && useradd -r -g nameko nameko
RUN mkdir -p /var/nameko/ && chown -R nameko:nameko /var/nameko/

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

# Build the wheel
WORKDIR /application
RUN pip wheel .
RUN ls /application/wheelhouse

# Stage 3: Install Image
FROM base as install

COPY --from=builder /application/wheelhouse /wheelhouse

# Install user service dependencies
RUN pip install --no-index -f /wheelhouse jayakarta_sp_hotel

# Stage 4: Final Service Image
FROM base as service

COPY --from=install /appenv /appenv

# Set working directory and copy configuration files
RUN mkdir -p /var/nameko/
COPY config.yml /var/nameko/config.yml
COPY run.sh /var/nameko/run.sh

# Set permissions for run.sh
RUN chmod +x /var/nameko/run.sh

# Switch to non-root user
USER nameko

# Set working directory
WORKDIR /var/nameko/

# Expose port for the service
EXPOSE 8000

# Define the command to run the service
CMD ["/var/nameko/run.sh"]
