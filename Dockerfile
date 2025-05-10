# Use official Python 3.8 base image
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy all application files to the container
COPY . /app

# Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Initialize the database
RUN python init_db.py

# Expose the port the app runs on
EXPOSE 3111

# Start the app
CMD ["python", "app.py"]
