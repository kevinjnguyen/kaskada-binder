# Start off with the base image as  Python 3.9
FROM jupyter/scipy-notebook:python-3.10.9

# Create user with a home directory
ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

WORKDIR ${HOME}

# Install the requirements (mainly Kaskada)
COPY ["./requirements.txt", "requirements.txt"]
RUN pip install -r requirements.txt

# # Copy over the sample notebook and dataset
COPY ["./Hello World Example.ipynb", "Hello World Example.ipynb"]
COPY ["./dataset1.csv", "dataset1.csv"]
