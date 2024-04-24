FROM python:3.12-slim-buster
WORKDIR /app
COPY . /app
RUN pip install nltk
RUN python -m nltk.downloader stopwords punkt
CMD ["python","random_paragraphs.py"] 
