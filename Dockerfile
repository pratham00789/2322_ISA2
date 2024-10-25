# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Python and Flask
RUN apt update && \
    apt install -y python3 python3-pip && \
    pip3 install flask

# Copy application.py to /opt/app
COPY application.py /opt/app/application.py

# Set the command to run the Flask application
CMD ["flask", "run", "--host=0.0.0.0"]
