# SiiM 2019

Author: Tim Kline PhD, kline.timothy@mayo.edu

Original upload date: 28 June 2019

Purpose:
--
These are the Jupyter notebooks covered on the Machine Learning 1 session at the Denver SiiM annual meeting. To run they  need to in the Jupyter environment. This can be done on either a remote system or running locally on your computer. The next section shows how. 

Requirements:
--
#### Running on Google COLAB
A very quick way to try out the notebooks on this site is to link them to Google COLAB. To do this you need
to have a Google account of some type (Gmail works). Then, in your Chrome browser (others likely won't work)
enter the following
```
https://colab.research.google.com/github/ImagingInformatics/machine-learning/blob/master/SiiM2019/xxx 
```
where xxx is replaced by "MLcourse_Notebook_1_update.ipynb" or the other notebooks you see on this site


#### Running locally
To make things easier, SiiM provides a convenient docker that has integrated Tensorflow / Keras / Jupyterlab. To use it you will first need to 
install the Docker runtime and then a Jupyter enabled Docker. The steps for installing Docker are here
https://github.com/ImagingInformatics/machine-learning/blob/master/Documentation/HOWTO-1.md

And the steps for installing a Jupyter enabled Docker are located here: https://github.com/ImagingInformatics/machine-learning/tree/master/docker-keras-tensorflow-python3-jupyter

After completing the above two tasks make sure to come back to this page. 

Contents:
--
Now that you have the DOcker runtime and the Jupyter notebook runnning, you can get the content for this course here
https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/ImagingInformatics/machine-learning/tree/master/SiiM2019

This project contains 5 notebooks, a folder called "figures" (which is used by notebook xxx) and some extra instructions (e.g. how to get an MD.ai token for pulling data sets)

Instructions:
--
First, follow the instructions under Requirements for installing the DOcker runtime and installing the Jupyter DOcker on your computer. Once that is done pull down the Notebooks in this git folder and save them to the ALL_NOTEBOOKS folder you created in the Requirements section. 
Each notebook is commented with the additional information required to run it once it is pulled into Jupyter  (e.g. if it needs an MDai token to fetch data)




