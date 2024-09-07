# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose a port if your application needs to listen to a specific port
# EXPOSE 8000

# Set environment variables
# (Optional) If you want to hardcode them, but typically set them in Railway's dashboard
# ENV MONGO_URI="your_mongo_uri"

# Command to run the bot
CMD ["python3", "bot/bot.py"]
