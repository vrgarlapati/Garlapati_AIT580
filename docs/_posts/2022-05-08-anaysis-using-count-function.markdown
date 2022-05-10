---
layout: post
title:  Analysis using count function and wordcloud
date:   2022-05-09 13:50:27 -0400
img: 34.jpg
tags: [Data]
---
5.	Which three companies are facing a more significant number of complaints and try to show them with graphical representation using bars in the month of March 2022?

Code: 

    "complaints.Company.value_counts()[:10]

    Numerical O/p: Execute above statement

    EQUIFAX, INC.                             428075
    TRANSUNION INTERMEDIATE HOLDINGS, INC.    332426
    Experian Information Solutions Inc.       307519
    BANK OF AMERICA, NATIONAL ASSOCIATION     112499
    WELLS FARGO & COMPANY                      96113
    JPMORGAN CHASE & CO.                       89657
    CITIBANK, N.A.                             74924
    CAPITAL ONE FINANCIAL CORPORATION          66446
    SYNCHRONY FINANCIAL                        37072
    Navient Solutions, LLC.                    36315
    Name: Company, dtype: int64

    complaints.Company.value_counts()[:10].plot(title = 'March 2022, Number of Complaints by Company (top 10)', kind='bar')
    plt.show()"

Graphical Representation: Execute above code

Observation: EQUIFAX, INC., TRANSUNION INTERMEDIATE HOLDINGS, INC., Experian Information Solutions Inc., stands in the top 3 spots in the number game of recording complaints. It can be seen from the graph that there is more than 250% decrease in recording the complaints with the next highest, i.e., Bank of America which has 112k complaints.  

6.	Check how did the companies respond to their customer’s complaints.

Code: 

    "complaints['Company response to consumer'].value_counts()

    Numerical O/p: 

    Closed with explanation                             2133599
    Closed with non-monetary relief                     313687
    Closed with monetary relief                         114150
    In progress                                         44589
    Closed without relief                               17868
    Closed                                              17611
    Untimely response                                   9233
    Closed with relief                                  5304
    Name: Company response to consumer, dtype: int64

    complaints['Company response to consumer'].value_counts().plot(title='March 2022, Company Response to Complaints', kind='bar')
    plt.show()"

Graphical Representation: Execute above code

Observation: It can be observed that most of the companies have closed the complaints with explanations and there were negligible number of complaints which were untimely responded and closed with relief.

7.	Visualize the Banking Companies using wordcloud.

Code: 

"from wordcloud import WordCloud
def plot_wordcloud(wordcloud1):
    plt.figure(figsize=(12, 10))
    plt.imshow(wordcloud1, interpolation = 'bilinear')
    plt.axis("off")
    plt.show()

    from nltk.corpus import stopwords
    stop_words = stopwords.words('english')

    company_names = complaints.Company.values.tolist()

    wordcloud1 = WordCloud(max_font_size=None, max_words = 200, background_color="white", width=5000, height=4000, stopwords = stop_words).generate(str(company_names))

    plot_wordcloud(wordcloud)"

Output: Execute the above code
![Flower and water]({{site.baseurl}}/images/pages/28.png)