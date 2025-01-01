#!/usr/bin/env bash

# Update package lists
apt-get update

# Install FFmpeg and required libraries
apt-get install -y ffmpeg libx264-dev libavcodec-extra

# Add any other dependencies required for your project
# Example:
# apt-get install -y libsm6 libxext6
