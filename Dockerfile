# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies (FFmpeg, libraries for OpenCV, etc.)
RUN apt-get update && apt-get install -y \
    ffmpeg \
    libx264-dev \
    libavcodec-extra \
    && rm -rf /var/lib/apt/lists/*

# Copy the current directory contents into the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the app
CMD ["python", "app.py"]