# Use the official Python image from the Docker Hub with an Alpine variant
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container's working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files and templates into the container
COPY app.py .
COPY templates/index.html templates/

# Expose port 5000 for the Flask app
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
