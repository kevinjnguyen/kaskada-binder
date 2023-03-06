# Start off with the base image as  Python 3.9
FROM jupyter/scipy-notebook:python-3.10.9

USER jovyan
WORKDIR $HOME

COPY ["./requirements.txt", "requirements.txt"]
RUN pip install -r requirements.txt
