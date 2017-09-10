---
title: Welcome!
output: word_document
---

Thanks so much for taking the plunge on the CAS' first ever intermediate R workshop! This represents a meaningful step forward for the actuarial community as it continues to embrace a very significant analytics and predictive modelling platform.

One thing that I want to emphasize early on: this day will be all about becoming a better R programmer and getting familiar with some of the coolest tools from the R ecosystem. You'll see very little in the way of statistics and predictive modelling. Let's be clear, if you're a better programmer, you're going to build better models and you're going to do it faster, more often and with fewer bugs. But if you're wondering when we're going to get to random forests or k-nearest neighbors clustering, we aren't going to. There's a whole other workshop for that.

With that in mind, here are some ...

## Things that you will need

### R and RStudio installed and running on your computer.

We're not playing around with this one. If R and RStudio aren't on your computer, if you can't install any package that you want, whenever you want, you'll have a pretty significant headwind. In particular, note that we're assuming you can RStudio without any issues. RStudio installs with some utilities like pandoc, which are tricky to run from a non-standard (i.e. on a memory stick) install.

Regarding R, I'm running version 3.4.1 and there's no reason you shouldn't. Slightly earlier versions may work with the tools we're using, but I can't guarantee it. 

### Packages

We'll be using the following, most of which you probably have, but double check:

* devtools
* testthat
* rmarkdown
* shiny

### If you are using Windows:

Download and install rtools [https://cran.r-project.org/bin/windows/Rtools/](https://cran.r-project.org/bin/windows/Rtools/). You'll want a version which works with whatever version of R you have installed. 

At some point during the installation, you'll see a very poorly designed pop-up asking if you want to add various items to the system PATH. The default will have that box unchecked. Be sure to check it.

### Install git

Download and install git. You can find installers for all major platforms here: [https://git-scm.com/downloads](https://git-scm.com/downloads).

Optional is to install a GUI for git. I don't use one, so won't be showing you one during the workshop, but I found it to be very valuable when I was just starting out. Here are a couple of options:

* [GitHub desktop](https://desktop.github.com/)
* [Atlassian Sourcetree](https://www.sourcetreeapp.com/)

### Speaking of git ...

This is another optional item, but I will encourage you to create an account with [GitHub](https://github.com/join). I'll be placing some material there and it'll be easier to find and play with if you have an account. There are other collaborative, cloud-based platforms out there ([BitBucket](https://bitbucket.org/) and [GitLab](https://about.gitlab.com/gitlab-com/), to name but two) but GitHub is the most popular.

If you create a GitHub account and really want to go the extra mile, you can sign up for [Travis](https://travis-ci.org/), which is a continuous integration platform that's essentially for automated testing of your code.

Um, I think that's about it. See you Sunday and in the meantime, let me know if you have any questions.
