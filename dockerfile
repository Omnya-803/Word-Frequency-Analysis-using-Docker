# This Dockerfile creates a container using the python:3.8-slim-buster image
FROM python:3.8-slim-buster
# Set the working directory to /app.
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . /app
# Install (dependencies needed)the NLTK library for natural language processing
RUN pip install nltk
# Download the 'stopwords' and 'punkt' packages for NLTK
RUN python -m nltk.downloader stopwords punkt
#Run the python script when the container launches 
CMD ["python","random_paragraphs.py"] 
