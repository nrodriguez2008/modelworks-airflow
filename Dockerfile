FROM python:3.10

# Install Python dependencies (no system packages needed)
RUN pip install --no-cache-dir \
        numpy \
        pandas \
        scikit-learn \
        minio \
        boto3

WORKDIR /app
COPY . /app

CMD ["python", "main.py"]
