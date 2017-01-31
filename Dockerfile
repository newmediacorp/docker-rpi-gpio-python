FROM resin/rpi-raspbian:jessie

RUN apt-get -q update && \  
    apt-get -qy install \
        python \
        python-dev \
        python-pip \
        gcc \
        make

# Install Rpi.GPIO
RUN pip install rpi.gpio

# Download the SPI-Py project source files
ADD https://github.com/rgerovski/SPI-Py/archive/v0.0.1.tar.gz SPI-Py.tar.gz

# Extract the tarball & clean-up
RUN tar -xzvf SPI-Py.tar.gz && rm -f SPI-Py.tar.gz

# Install SPI-Py
RUN cd SPI-Py-0.0.1/ && python setup.py install

# Directory where python app will run
RUN mkdir /app
WORKDIR /app
