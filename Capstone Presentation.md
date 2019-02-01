Data Science Capstone Presentation
========================================================
author: Magnolia
date: 01 February 2018
autosize: true



Introduction
========================================================

This Data Science Capstone project is offered by John Hopkins University @ Coursera, in partnership with SwiftKey. SwiftKey is one of the best predictive keyboard applications for mobile devices, that uses predictive analytics.

The main objectives of this Capstone project;

- Building a model to predict the next word of a phrase 
- Creating a Shiny App to apply the model.



Developing an Algorithm
========================================================

Before building the word prediction algorithm, data was first cleaned and processed as follows:
- Extraction from Swiftkey zip file which was sampled from the three sources (blogs,twitter and news).
- Conversion to lowercase, strip white space, and removing punctuation and numbers.
- Tokenization into three N-gram files: bigrams, trigrams and tetragrams using NLP techniques.

- Organizing the words in a frequency sorted dictionary with the most frequent phrases on the top of list
- The resulting data frame was used to create the prediction algorithm.


Shiny Application
==========================================================
![alt text](Shiny.png)

- After the application is launched, enter some text in the input box and then press **OK**.
- The prediction for the 3 datasets can be seen in the application output.

Additional Information
============================================================

Links

The Shiny app is hosted on shinyapps.io: <https://magnolia.shinyapps.io/Capstone/>

This presentation is located on RPubs: <http://rpubs.com/Magnoliam/Capstone>
