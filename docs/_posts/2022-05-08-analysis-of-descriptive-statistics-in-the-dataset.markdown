---
layout: post
title:  Analysis of descriptive statistics in the dataset
date:   2022-05-09 13:57:50 -0400
img: 35.jpg
tags: [Analysis, Data]
---
Briefly describe the dataset. Prepare and describe relevant metadata (types of attributes/variables in the dataset).

The Consumer Financial Protection Bureau (CFPB) provides a list of consumer complaints from its database to corporations for action. Following the company's response, the CFPB formally discloses the complaints for the public to see.
The data was accessible via JSON, CSV, and API. The CSV file was downloaded for this project. We planned to use these dataset attributes to extract some useful insights that would help us figure out what the company needs to improve and assist customers in making informed decisions. This was a huge dataset. At the time of the final download, the dataset had a total of 2653059 complaints (March 2022). We have a date, string, and number formats in our columns. Our CSV file was about 1.60GB in size. Because our dataset is vast, data pre-processing and cleansing will be required regardless of the type of analysis we undertake.

Data types
Product                         object
Sub-product                     object
Issue                           object
Sub-issue                       object
Consumer complaint narrative    object
Company public response         object
Company                         object
State                           object
ZIP code                        object
Tags                            object
Consumer consent provided?      object
Submitted via                   object
Date sent to company            object
Company response to consumer    object
Timely response?                object
Consumer disputed?              object
Complaint ID                     int64
dtype: object

Statistical Summary findings of the dataset.

complaints.describe(include='all')
Out[29]:
	Product	Sub-product	Issue	Sub-issue	Consumer complaint narrative	Company public response	Company	State	ZIP code	Tags	Consumer consent provided?	Submitted via	Date sent to company	
count	2653059	2417896	2653059	1994535	926071	1101765	2653059	2613424	2613170.0	311092	1872149	2653059	2653059	
unique	18	76	165	221	822331	11	6368	63	59023.0	3	4	7	3757	
top	Credit reporting, credit repair services, or o...	Credit reporting	Incorrect information on your report	Information belongs to someone else	My credit reports are inaccurate. These inaccu...	Company has responded to the consumer and the ...	EQUIFAX, INC.	CA	30349.0	Servicemember	Consent provided	Web	2022-04-19	Closed with explanation
freq	1088990	1075668	638340	407377	1197	905287	427629	333513	2285.0	167759	926513	2180651	3550	
mean	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	
std	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	
min	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	
25%	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	
50%	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	
75%	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	
max	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	NaN	