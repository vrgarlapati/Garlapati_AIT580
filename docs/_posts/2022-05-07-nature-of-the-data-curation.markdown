---
layout: post
title: Nature of the Data Curation 
date: 2022-05-09 15:32:29 -0400
img: 44.jpg
tags: [Data]
---
The Customer Financial Protection Bureau keeps track of all consumer complaints in a database. The Consumer Financial Protection Bureau (CFPB) was established on July 21, 2011, with the goal of fighting for customers' rights and overseeing customer satisfaction and protection in the financial industry.
The Consumer Financial Protection Bureau (CFPB) provides a list of consumer complaints from its database to organizations for response. Following the company's response, the CFPB formally publishes the complaints data for the general public to view.

CFPB, will publish the data from various industries by collecting and publishing to the public and also perform data analysis. It will collect the data and send it to organizations to cross-check whether the data can be published publicly or not. Also, before publishing the data the CFPB will remove certain features (columns) which should be published from the dataset.

Why did they collect the data (purpose)?
The dataset parameters are used to obtain some useful insights that can help us figure out what the organization needs to improve and assist customers in making informed selections.
Because our dataset is vast, data pre-processing and cleaning will be required regardless of the type of analysis we undertake.

What is the nature of the data given the purpose of the data collection (e.g., any bias)? 
The Consumer Financial Protection Bureau (CFPB) maintains a consumer complaint database, which contains complaints about consumer financial products and services provided by companies across the United States. These complaints came from their customers. It includes information such as the type of complaint, the product for which the complaint was issued, the date of the complaint, the issue, the sub-issue, and the action taken, among other things.


Given the nature of the data, how can you adjust and leverage the data (i.e., what are pros and cons of the data and how can you overcome it)?
By pre-processing, the data has one main goal: Standardization.
Standardization of dataset fields was something simple, but very useful. It’s easier to use column names that are one-word than multiple. Our main focus was the consumer complaint narratives field and any null value within that has no use, so data is cleaned by removing all rows with a null value in the consumer complaint narrative field. The field cannot be null as we are using this field to calculate topic trends and text mining of that field. 
We split the text from the consumer complaint narrative field into sentences, sentences into words, made the words lowercase, and removed the punctuation.
Words in the field with less than 3 characters were discarded, all stopwords (the, he, she, have, get, etc.) were also removed.
We lemmatized the word. This means that words in third person were changed to first person and verbs in past and future tenses were changed to present.
Words were stemmed and were changed to their root form. Words like “fraud”, “fraudster” were minimized to just “fraud”.