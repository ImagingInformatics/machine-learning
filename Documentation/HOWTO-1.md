# HOWTO 1 of the  Machine Learning Committee of SIIM. 

Intended Audience:
--
People who are brand new to machine learning, and don't
want to acquire a Ph.D. in computer science just to start
learning


 Table of Contents
--
1. Background
1. Do you have the required hardware?
1. Getting and installing DOcker
1. Getting a prebuilt DOcker on DOckerhub
1.  Getting the Machine Learning DOcker to run


Chapter 1
--
SiiM established the Machine Learning COmmitee to accomplish 
several goals:
1. each concepts to people new to the area
1. encourage learning and modifying from existing turnkey appliances
1.  advance the field with teams of people who are willing to co-develop on reproducible platforms

Towards these ends, the Comm. has settled on the idea of encouraging participants to contribute their 
code in the reproducible format known as Dockers


Chapter 2
--
Since we are doing machine learning, and most ML platforms require a
GPU, the first thing to figure out is does your computer have the 
hardware called out by the Docker author that you intend to use?

For the purpose of this HOWTO, we will assume the user is going to 
pull down and run the DOcker based on Dr. George Shui's Keras based
DOcker. The link to that (and its requirements) is here

https://github.com/ImagingInformatics/machine-learning/tree/master/docker-keras-tensorflow-python3-jupyter 

From his README file looks like all we need is: 4 GB of RAM, a normal CPU, and a modern OS. Moving along ...



Chapter 3
--
Again, for the purpose of this HOWTO, we are going to use the 
Keras DOcker that already has an entry on DOckerhub. So all you
have to do is have the DOcker run-time engine, and a DOckerhub
account, to pull down the premade Docker and run it

First, let's install the Docker engine for your PC. You can get the 
Docker runtime for your computer here 	https://www.docker.com/ 

More specifically :
1. Windows >=10 (https://hub.docker.com/?overlay=onboarding)
1. Older Windows or Surface (https://docs.docker.com/toolbox/overview/)
1. MacOS >= 10.12 (https://hub.docker.com/?overlay=onboarding)
1. Linux: varies by distribution 
1. iOS or Android: out of scope

Follow the instructions for your OS and install it



Chapter 4
--
Now let's go to Dockerhub to grab a copy of the already built Docker

	https://hub.docker.com/r/georgezero/keras-tensorflow-python3-jupyter


Chapter 5
-----------------------------------------
Once downloaded, follow the instructions in Dr. Shih's README to run it




