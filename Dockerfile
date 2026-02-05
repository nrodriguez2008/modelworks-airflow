FROM python:3.10-slim

# System dependencies for numpy, pandas, scikit-learn
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        python3-dev \
        gfortran \
        libatlas-base-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir \
        numpy \
        pandas \
        scikit-learn \
        minio \
        boto3

# Copy your model training / agent code
WORKDIR /app
COPY . /app

# Default command (you can change this)
CMD ["python", "main.py"]
