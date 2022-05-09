---
layout: post
title: Questions
date: 2022-05-08 17:33:29 -0400
img: 18.jpg
tags: Questions
---
What are the main questions of your interests that can be answered through the data that you chose?
To deal with data of this size, most people will use graphs. Because the dataset is so huge, it's difficult to go through it and extract insights. So, we utilized Python to extract some information from the data. Install and import all essential Python packages and dataset as the initial step. After that, the data should be cleaned for the exploratory data idea, and the data is cleansed by focusing on the customer complaint narrative, and we employed several approaches to acquiring various sorts of insight and value.
To obtain a sense of the most common words in the consumer complaint narrative column, we developed a word cloud. This would give us a sense of the most used words in customer complaints narrative column. It is possible to draw a much clearer picture of the challenges that the customers face.

What software and hardware resources you have used in this project? 
Excel and Jupiter Notebook are the software - based resources used in this project to help you understand and visualize data. The laptop is a hardware resource, and for visualization approaches, a Lenovo laptop with an Intel i7 processor and 12 GB of RAM, as well as a Google colab GPU, TPU, was employed.

What kinds of pre-processes were needed to make use of the data, and why? 
The dataset contains numerous null values, so EDA-Exploratory data analysis (text data pre-processing) is necessary to eliminate them. By omitting this, the data shape will become smaller and easier to process.

What are the advantages and limitations of the target dataset in answering your questions?
The target dataset is extremely large, and standard computer hardware resources will be insufficient to execute tasks such as TF-IDF, SVM, and Logistic regression fitting, as well as Deep learning. And, with this type of data set, leveraging GPU or TPU resources makes it simple to train, test, and validate the data, whereas finding the correctness of data on a standard computer is difficult.