FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Expose port 80
EXPOSE 80

# Start Uvicorn with live reload
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]