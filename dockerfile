FROM python:alpine

RUN pip install nltk

RUN python -m nltk.downloader stopwords punkt

WORKDIR /app

COPY random_paragraphs.py /app

COPY random_paragraphs.txt /app

CMD ["python","random_paragraphs.py"] 