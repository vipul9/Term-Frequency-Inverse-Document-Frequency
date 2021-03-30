# Term-Frequency-Inverse-Document-Frequency (tf-idf)

docdistances.m is a MATLAB program which caluculate the distance between two documents.

The script will calculate the distances between 6 documents: 3 documents are synopsis of 
fairy tales (Red riding hood, the Princess and the pea and Cinderella); the other 3 documents are the abstract 
of papers related to protein function prediction (identified as CAFA1, CAFA2 and CAFA3).

Step 0: Form a corpus. Corpus is a collection of unique words in all the documents.

Step 1: Calculate term frequency (TF)

Measure number of times term (word) occur in a document

Step 2: Calculate Inverse Document Frequency (IDF)

IDF = 1 + log(Total number of documents / number of documents containing that term) 

Note: log with base e

Step 3: TF*IDF

Step 4: calculating Cosine Distance

cosine distance = 1 - cos(angle between tf-idf vectors)

Following is the result:

<img src="https://github.com/vipul9/Term-Frequency-Inverse-Document-Frequency/blob/main/tf-idf.png" width="400"/>

It is interesting to note that the 2 types of documents form 2 clear groups: the synopsis of fairy tales are more similar to each other than they are to scientific papers.
