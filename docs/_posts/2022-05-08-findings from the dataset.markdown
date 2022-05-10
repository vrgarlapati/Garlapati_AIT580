---
layout: post
title:  Findings from the the analysis
date:   2022-05-09 11:46:27 -0400
img: 5.jpg
tags: [Analysis]
---

Here are the representations we have drawn out from the questions we used for analysis.

1.	Estimate the number of complaints registered in different states of the USA and which state needs to improve their banking performance based on the number of complaints reported.

Code:

    "fig = plt.figure(figsize=(20,12))
    complaints.groupby(['State'])['Complaint ID'].count().sort_values().plot.barh(
    ylim=0, color='blue', title= 'NUMBER OF COMPLAINTS IN EACH STATE\n') ## Grouping by State and Complaint ID
    plt.xlabel('Number of ocurrences', fontsize = 10);"

Graphical Representation: ![Flower and water]({{site.baseurl}}/images/pages/1.png)

Observation: California has recorded the maximum number of complaints; with this, it is recommended that the bankers in CA work better on resolving the queries of their customers.


2.	In the state that registered with the highest number of complaints, what is the highest portion of the type of product and issue concerned with reported complaints?

Code: 

Product: 

    "complaints[complaints['State'] == 'CA']['Product'].value_counts().head(10).plot.pie(explode=[0.1,0,0,0,0,0,0,0,0,0],shadow=True)
    import matplotlib.pyplot as plt
    plt.gca().set_aspect('equal')"

Graph: Refer to output ![Flower and water]({{site.baseurl}}/images/pages/23.png)

State and Issue:
    "complaints[complaints['State'] == 'CA']['Issue'].value_counts().head(10).plot.pie(explode=[0.1,0,0,0,0,0,0,0,0,0],shadow=True)
    import matplotlib.pyplot as plt
    plt.gca().set_aspect('equal')"

Graph: Refer to output ![Represention between state and issue using pie-chart]({{site.baseurl}}/images/pages/24.png)

Observation on Product type: Credit reporting, credit repair services, or other personal consumer reports has swept over larger area among all the products concerned with the CA complaints.

Observation on Issue: Incorrect information on your report has swept over larger area among all the issues concerned with the CA complaints.

3. Estimate the proportion of types of products associated with the complaints 

Code: 

    "prd = round(complaints["Product"].value_counts() / len(complaints["Product"]) * 100,2)
    print(prd)
    labels = list(prd.index)
    values = prd.values.tolist()
    colors = ['#F78181', '#F5A9BC', '#2E9AFE', '#58FA58', '#FAAC58', '#088A85', '#8A0808', '#848484', '#F781F3', '#D7DF01', '#2E2EFE']
    prd_pie = go.Pie(labels=labels, values=values, marker=dict(colors=colors, line=dict(color='#000000', width=2)))
    lyt = go.Layout(title='Product Types')
    fig = go.Figure(data=[prd_pie], layout=lyt)
    iplot(fig)"

Interactive Representation: 
![Flower and water]({{site.baseurl}}/images/pages/25.jpeg)


4.	What are the first 3 product types that are associated with the complaints, and try to represent them numerically using a bar graph in the month of March 2022?

Code: 

    "complaints.Product.value_counts()

    Numerical O/p: Execute above statement

        Credit reporting, credit repair services, or other personal consumer reports     1091063
        Debt collection             422135
        Mortgage                         353283
    complaints.Product.value_counts().plot(title='March 2022, Complaints by Product', kind='bar')
    plt.show()"

Graphical Representation: Execute above code
![Flower and water]({{site.baseurl}}/images/pages/27.png)

Observation: Among all the types of products, Credit reporting, credit repair services, or other personal consumer reports deals with more than a million complaints that are related to it, and then comes Debt Collection and Mortgage with more than 422k and 353k number of complaints associated to them respectively. We can see that there is a sharp decrease of more than 200% of complaints with next type of products. Virtual Currency has almost negligible number of complaints.


Classification Report with Precision, recall, F1 score has been performed during data analysis.

