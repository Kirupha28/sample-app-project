# 1. Base image
FROM python:3.10-slim

# 2. Set working directory
WORKDIR /app

# 3. Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy application
COPY . .

# 5. Expose app port
EXPOSE 5000

# 6. Run the app
CMD ["python", "app.py"]

