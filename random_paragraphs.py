import os
import nltk
from nltk.corpus import stopwords
from collections import Counter
# Download stopwords 
nltk.download('stopwords')
nltk.download('punkt')

# Define file name and path
file_name="random_paragraphs.txt" 
file_path =os.path.join(os.getcwd(),file_name)

# Check if the file exists
if os.path.exists(file_path):
    # Proceed with opening the file and reading its contents
    with open(file_path, 'r') as file:
        text = file.read()
            
else:
    print(f'The file "{file_path}" does not exist.')
    
# Tokenize the text
words = nltk.word_tokenize(text)

# Remove stopwords
stop_words = set(stopwords.words('english'))
filtered_words = [word for word in words if word.lower() not in stop_words]

# Count word frequencies
word_freq = Counter(filtered_words)

# Display word frequency count
for word, freq in word_freq.items():
    print(f'{word}: {freq}')
