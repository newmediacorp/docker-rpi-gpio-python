# docker-rpi-gpio-python
Dockerfile for Raspberry Pi GPIO access with Python

### Usage

To access the Raspberry Pi GPIO pins, you need to run the container in privileged mode.

Building the image:

    $ docker build -t newmediacorp/rpi-gpio-python .
    
Run the container:

    $ docker run -it --privileged -v $(pwd)/app:/app newmediacorp/rpi-gpio-python