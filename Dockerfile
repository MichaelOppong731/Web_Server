# I'll make use of of the concept of multi-stage build for this dockerfile
# With this practice, the immage size would be reduced

# Stage 1: Build
FROM python:3.9-slim as builder

# Set the working directory
WORKDIR /app

# Copy only the requirements file to avoid unnecessary caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir --prefix=/install -r requirements.txt

# Stage 2: Runtime
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy only necessary files from the build stage
COPY --from=builder /install/usr/local

# Copy the application code
COPY . .

# Expose the application's port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]

