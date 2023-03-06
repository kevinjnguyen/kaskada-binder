# Start off with the base image as  Python 3.9
FROM python:3.9-slim
RUN pip install --no-cache notebook jupyterlab

# Install the requirements (mainly Kaskada)
COPY ["./requirements.txt", "requirements.txt"]
RUN pip install -r requirements.txt

# Copy over the sample notebook and dataset
COPY ["./Hello World Example.ipynb", "Hello World Example.ipynb"]
COPY ["./dataset1.csv", "dataset1.csv"]
