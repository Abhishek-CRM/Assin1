# Use a lightweight Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt requirements.txt

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose the application's port
EXPOSE 5000

# Set the command to run the Flask application
CMD ["python", "app.py"]
