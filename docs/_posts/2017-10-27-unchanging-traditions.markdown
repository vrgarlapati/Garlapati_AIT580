---
layout: post
title:  Unchanging traditions
date:   2017-10-27 12:46:27 +0300
img: 5.jpg
tags: [Traditions, Books, Morning]
---
We used python to analyze the dataset of the Consumer complaints database.
Data shape: (2653059, 18)

Issues of California state:

complaints[complaints['State'] == 'CA']['Issue'].value_counts().head(10)
Incorrect information on your report 74376 
Problem with a credit reporting company's investigation into an existing problem 29783 
Loan modification,collection,foreclosure 22282 
Attempts to collect debt not owed 15395 
Incorrect information on credit report 12994 
Improper use of your report 12763 
Loan servicing, payments, escrow account 11195
Managing an account 11042
Cont'd attempts collect debt not owed 8454 Trouble during payment process 7782 Name: Issue, dtype: int64



Classification Report with Precision, recall, F1 score has been performed during data analysis.