# HOWTO 2 of the  Machine Learning Committee of SIIM. 

Intended Audience:
People who have already setup a Docker runtime engine and
have an account on DockerHub, and have run a turnkey ML
DOcker

 Table of Contents
--
1.  Background
1.  Installing git and getting a Github account
1. Cloning a git repository
1.  Modifying the code on your local branch
1.  Submitting the code back to the repo owner


Chapter 1
--
In HOWTO-1 you learned how to take a turnkey ML Docker 
and run it on your system. Now, we assume you want to make 
improvements/changes to it. To do this, you will need the source code
used to build the Docker by the original authors

Enter git ...


Chapter 2
--
Most people in the open source community use a site called Github
to share their code with others. This requires the authors to have
git running locally on their PC, and to have an account on Github to post
their code for others to see and get

You can get a github account here https://github.com/

And install git to your local system from here
https://git-scm.com/downloads



Chapter 3
--
In HOWTO-1 you grabbed a Docker that was already built and
pulled it onto your PC to run. But once you have a github account 
and git running locally, you can download the source code for a DOcker 
and build it yourself. This also means you can modify it 

In HOWTO-1 we went to a site where Dr. Shih had his pre-built Docker (dockerhub). 
To get his source code so can modify and build it yourself, go here and clone it (green button)
https://github.com/ImagingInformatics/machine-learning 

This will actually get you the entire SiiM-MLC repository, including the file you are reading right now!


Chapter 3
--
Let's modify the source. The first thing you will likely want is to enable the GPU version of Tensorflow 
on your computer (if it supports it). The place to do that is the line in the DOckerfile that installs keras. 
Instead of 
```
RUN conda install keras
``` 

try using
```
RUN conda install keras-gpu
```

And save the new DOckerfile. Now rebuild your Jupyter DOcker by typing "make build" on the command line.


Chapter 4
--
And now that you've made massive improvements to Dr. S code
you of course want to submit it back to him to update his repo. To do so learn about "git pull" requests
here https://www.git-scm.com/docs/git-pull  






