# Install Python
FROM python:3-slim

# Set working directory
WORKDIR /flaskapp

# Copy all files into container
COPY app.py requirements.txt /flaskapp/

# Install dependencies
RUN pip install -r requirements.txt

# Run the Flask app
CMD ["python", "app.py"]
