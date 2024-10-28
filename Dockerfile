# Use the official lightweight Python image.
FROM python:3.9-slim

# Set environment variables to prevent Python from writing pyc files and buffering stdout/stderr.
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container.
WORKDIR /app

# Copy the dependencies file to the working directory.
COPY requirements.txt .

# Install the required packages.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the working directory.
COPY . .

# Expose port 80 to the host.
EXPOSE 80

# Run the application.
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]