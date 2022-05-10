---
layout: post
title:  Sentimental Analysis
date:   2022-05-09 13:39:27 -0400
img: 34.jpg
tags: [Analysis, Data]
---
8.	Using the sentiment analysis of the Consumer complaint narrative, discuss the different kinds of complaints and their sentiment scores.

Calculating Sentiment Scores:

    "from nltk.sentiment.vader import SentimentIntensityAnalyzer
    analyzer = SentimentIntensityAnalyzer() 
    def print_sentiment_scores(sentence):
    snt = analyzer.polarity_scores(sentence)
    print("{:-<40} {}".format(sentence, str(snt)))
    print_sentiment_scores("Closed with explanation")
    print_sentiment_scores("Closed with monetary relief")

    senti_df:

    senti_df = pd.read_csv("/Users/neeharbujimalla/Downloads/complaints.csv",
                usecols=('Issue', 'Consumer complaint narrative'), nrows=100000)
    senti_df.isnull().sum()
    senti_df = senti_df.dropna()
    print('Dataset after removing Null values: ', senti_df.shape)

    def negative_score(text):
        negative_value = analyzer.polarity_scores(text)['neg']
        return negative_value

    def neutral_score(text):
        neutral_value = analyzer.polarity_scores(text)['neu']
        return neutral_value

    def positive_score(text):
        positive_value = analyzer.polarity_scores(text)['pos']
        return positive_value

    def compound_score(text):
        compound_value = analyzer.polarity_scores(text)['compound']
        return compound_value

    senti_df['sentiment_neg'] = senti_df['narrative'].apply(negative_score)
    senti_df['sentiment_neu'] = senti_df['narrative'].apply(neutral_score)
    senti_df['sentiment_pos'] = senti_df['narrative'].apply(positive_score)
    senti_df['sentiment_compound'] = senti_df['narrative'].apply(compound_score)

    fig, axes = plt.subplots(2, 2, figsize=(10,8))

    senti_df.hist('sentiment_neg', bins=25, ax=axes[0,0], color='lightcoral', alpha=0.6)
    axes[0,0].set_title('Negative Sentiment Score')
    senti_df.hist('sentiment_neu', bins=25, ax=axes[0,1], color='lightsteelblue', alpha=0.6)
    axes[0,1].set_title('Neutral Sentiment Score')
    senti_df.hist('sentiment_pos', bins=25, ax=axes[1,0], color='chartreuse', alpha=0.6)
    axes[1,0].set_title('Positive Sentiment Score')
    senti_df.hist('sentiment_compound', bins=25, ax=axes[1,1], color='navajowhite', alpha=0.6)
    axes[1,1].set_title('Compound')

    fig.text(0.5, 0.04, 'Sentiment Scores',  fontweight='bold', ha='center')
    fig.text(0.04, 0.5, 'Number of Complaints', fontweight='bold', va='center', rotation='vertical')

    plt.suptitle('Sentiment Analysis of Complaints\n\n', fontsize=12, fontweight='bold');"

Output: Graphical representation can be seen by executing the last chunk of code
![Flower and water]({{site.baseurl}}/images/pages/29.png)

Observation: Here, stakeholders for our dataset are consumers who are individuals and in groups, banking companies, government authorities, and academics. The questions we have thought of addressing become vital for our them because they try to give a better picture of the data and help them understand their areas of improvement.
