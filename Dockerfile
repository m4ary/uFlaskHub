# Use an official Python 3.10 runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install necessary packages
RUN apt-get update \
    && apt-get install -y gcc libpcre3 libpcre3-dev \
    && rm -rf /var/lib/apt/lists/*

# Copy the script and your application source into the container
COPY . .

# Make the script executable and run it
RUN chmod +x update_reqs.sh \
    && ./update_reqs.sh

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Remove build dependencies
RUN apt-get purge -y --auto-remove gcc libpcre3-dev

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Run app.py when the container launches
CMD ["uwsgi", "uwsgi.ini"]

