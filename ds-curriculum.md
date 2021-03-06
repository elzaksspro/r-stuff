---
title: "DSC"
author: "Nicholas Viau"
date: "May 8, 2018"
output:
  html_document:
    css: alone.css
    toc: FALSE
    self_contained: no
    keep_md: yes
---



This is a general notebook for learning the fundamentals of _data science_. I began this project with no formal training in computer science or mathematics/statistics (though I did begin with a few years of R under my belt). At the time, I was considering enrolling in a graduate program for data science, but wrestled with the notion of spending money on an education that could largely be acquired online, for free.

I began working on a loose set of interests and goals. The learning process is both sequential and iterative: while certain concepts must be learned one after another, other skills must be honed throughout your learning experience.

## Overview of Skills

### Courses and Readings

1. Complete the [Statistics With R Specialization](https://www.coursera.org/specializations/statistics) on Coursera. This will help you get a handle on not just statistics, but also on important concepts related to probability, sampling, research design, etc. The course textbook [__*OpenIntro Statistics*__](https://www.openintro.org/stat/textbook.php) is freely available.

2. Read [_An Introduction to Statistical Learning_](http://www-bcf.usc.edu/~gareth/ISL/), take the [MOOC](https://lagunita.stanford.edu/courses/HumanitiesSciences/StatLearning/Winter2016/about) on Stanford Lagunita (both are freely available online), and thoroughly complete the tasks at the end of each chapter. Statistical learning involves both statistics and concepts related to calculus. This book is one of the common resources people mention when undertaking the learning process. According to the authors, the material is written for graduate students in _non-mathematical_ sciences. For a more throrough treatment of the topics, see [_Elements of Statistical Learning_](https://web.stanford.edu/~hastie/ElemStatLearn/).

3. Complete the [Machine Learning](https://www.coursera.org/learn/machine-learning) Coursera course taught by Andrew Ng. Also there's these great [machine learning flashcards](https://machinelearningflashcards.com/) available for a small price.

4. At this point you delve into deep learning, perhaps?

### Other Skills

* Great [list of questions](https://datascienceinterview.quora.com/) on Quora.
    * The questions come the [Data Science Interview Guide](http://www.datasciencequestions.com/) Ebook.

* Get very comfortable with __SQL__ syntax.

* Become profecient programming in __Python__. I come from an R background, so I wanted to learn Python.

### Meta Skills

Throughout this learning process you should begin reading about concepts related to applied data science. Some useful concepts include:

* Project Management. Though I was reading about issues related to reproducibility and project management for sometime, a good resource came about: The [Stats 337: Readings in Applied Data Science](https://github.com/hadley/stats337) course at Stanford being taught by Hadley Wickham. Also see the [PeerJ collection](https://peerj.com/collections/50-practicaldatascistats/) curated by Jenny Bryan and Hadley Wickham.

* _Don't get too bogged down in the theory!_ This sort of stuff is to augment your skills throughout your life. Some of it may not become relevent until you are actually doing work.

* I also suggest reading about the job market, the interview process, and what it's actually like to have a job in the field. Towards Data Science has a great series on this aptly named [Getting a Job in Data Science](https://towardsdatascience.com/may-edition-getting-a-job-in-data-science-125996b1734c). [Kristin Kehrer](https://towardsdatascience.com/@kristenkehrer) and [Ganes Kesari](https://towardsdatascience.com/@kesari) have some great blog posts on the subject.

TODO:

* Where does __linear algebra__, __calculus__ etc. fit in here? Where to learn?
    * Justin Grimmer's [Math Camp](https://github.com/justingrimmer/MathCamp) at UChicago?
* __Think about setting up wiki for research notes.__ See: http://wcm1.web.rice.edu/open-notebook-history.html
* Reading about data science...
    * RBloggers
    * Towards Data Science
    * Various industries blogs (AirBNB, etc).


## General Outline

This list is not set in stone and may change over time. I welcome any critiques or recommendations.

__*Basics:*__

* __Tools__ (languages)
    * R / Python
    * SQL
    * git
    * Big data infastructure?
* __Statistics__
    * Probability
    * Probability Distributions
    * Central Limit Theorem & Hypothesis Testing
    * Randomization and Inference
* __Linear Algebra and Multivariate Calculus__
* __Project Management__
    * Data Management / Integrity
    * Data Structure
    * Version Control
* __Principles of Data Communications and Visualization__

__*More Advanced Concepts:*__

* __Statistical Learning__ - Involves both statistics and calculus. See _Introduction to Statistical Learning_.
* __Machine Learning and Prediction__ - See _Elements of Statistical Learning_.
* __Bayesian Statistics__ - As opposed to frequentist statistics. See David Robinson's Bayesian statistics book?


### Reading Lists

* https://github.com/hadley/stats337#readings
* https://peerj.com/collections/50-practicaldatascistats/

<hr class="nick">

## Statistics

One of the great things about languages like R and Python is that many complex statistical operations can be completed in a few lines of code. Not only should you should know how to implement and interpret them, you should also know the underlying statistics behind them. Moreover, you should expect job interviews to ask you basic questions related statistics, specifically probability and probability distributions. Among the topics to read up on...

* __Probability__ - Start with basic principles of [combinatorics (PDF) ](https://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/Chapter3.pdf). Practice with [probability questions](https://www.analyticsvidhya.com/blog/2017/04/40-questions-on-probability-for-all-aspiring-data-scientists/) (also check out GRE questions related to probability). Practicing working with [decision trees](http://www.statisticshowto.com/how-to-use-a-probability-tree-for-probability-questions/) will be useful to help visualize and think through problems.
* __Probability Distributions__ - In an interview, you may be asked a question like "You have a process that behaves like X -- what distribution would you use to model that process?" This questions requires you o map a random process to a sensible distribution. This [blog post](http://blog.cloudera.com/blog/2015/12/common-probability-distributions-the-data-scientists-crib-sheet/) is a great start.
* __Central Limit Theorem & Hypothesis Testing__ - 

### Books

The following is a list of books I found useful for learning statistics.

* __Diez, Barr, and Cetinkaya-Rundel (2017)__, [_**OpenIntro Statistics**_](https://www.openintro.org/stat/textbook.php) - This is the book that accompanies the Coursera course on statistics. Probably the best book I've found out there.
* __Navarro (2018)__, [_**Learning Statistics with R**_](https://compcogscisydney.org/learning-statistics-with-r/) - This is fairly comprehensive book. It's not as pithy and straight forward as OpenIntro, but the examples use base R and I'm a huge fan of the vignettes and intuitive explanations of certain concepts. Keep in mind the author's background is in psychology.

_Some substantive sources_:

* Naked Statistics (2013) by Charles Wheelan
* The Signal and the Noise (2013)
* [Some data visualization readings...](https://www.economist.com/books-and-arts/2013/07/06/winds-of-change)

_Further reading..._

* __Cummings and Finch (2005)__, "[**Inference by Eye: Confidence Intervals and How to Read Pictures of Data**](www.apastyle.org/manual/related/cumming-and-finch.pdf)"
* __Kaplan (2017)__, "[**Teaching Stats for Data Science**](https://peerj.com/preprints/3205/)" - Good paper discussing modern approaches to learning statistics.
* __Waserstein and Lazar (2016)__, "[**The ASA's Statement on P-Values: Context, Process, and Purpose**](https://peerj.com/preprints/3205/)" - Encourages the use of confidence intervals and de-emphasizes the use of of p-values.

_To be determined..._

* **Robinson (2018)**, _**Introduction to Emperical Bayes**_ - If I want to dive deeper into Bayesian statistics.

<hr class="nick">

## Linear Algebra and Multivariate Calculus

## Applied Research

* Plain Text Social Science - http://plain-text.co/

### Sources

* The section on statistics is heavily borrowed from Carson Forter's "[How to Ace Data Science Interveiws: Statistics](https://towardsdatascience.com/how-to-ace-data-science-interviews-statistics-f3d363ad47b)"
