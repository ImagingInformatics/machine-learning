# HOWTO 3 of the  Machine Learning Comittee of SIIM. 

Intended Audience:
Accomplished ML developers who wish to share code with
SiiM

 Table of Contents
-------------------------------------
1.  Background
1.  Enabling your code repo to be used by SiiM
1.  Going the extra step - linking your code to DOckerhub
1.  Usage Instructions
1.  Documentation guidelines


Chapter 1
--
SiiM's objectives for the Machine Learning Comm. are described in HOWTO-1
To realize those objective, submitters should strive to make their
efforts accessible to both newbies and experienced practitioners. Towards that 
goal we suggest the following guidelines for packaging code and documentation.


Chapter 2
--
At a minimum, contributors should have a github repository for their own code
that they make public. Code should be provided as Jupyter notebooks.

SiiM staff will then use that repo as the source to make a sub-module in the 
  http://github.com/ImagingInformatics/machine-learning 

repository. Submitters will always maintain control over their own work.
....


Chapter 3
--
If submitters would like to maximize their audience they should
bundle their code (notebook) on a Jupyter Docker  on a DOckerHub 
account to provde a prebuilt appliance for users. Failing that, 
submitters should test their notebooks will run on the default 
Jupyter Docker described in HOWTO-1


Chapter 4
--
Describe how to set up and run your notebook, including any run-time
switches and open ports beyond what the default Jupyter DOcker uses. Also,
include instructions on how to obtain the datasets the notebook uses.


Chapter 5
--
Submitters should assume that other users are not intimately familiar with their
work. Given that, a consistent template in the commited README  would be helpful. We
suggest that submitters consider the following structure

1. Notebook(s) name:
	1. Author: email and or URL
	1. Original Upload date:
	1. Purpose: WHat is this Notebook for? Audience? Organ?
	1. Hardware Requirement: If your Noteboook requires a minimum amount of RAM or a base GPU, this would be the place to call this out. 
	1. Software Requirement: Any software expectations beyond those covered in HOWTO-1 should be called out here
	1. Dataset recommendation: Submitters should also point users to any needed image sets to train or run their Docker. At present SiiM has very limited availability of annotated and curated image sets.
	1. Runtime Instructions:  This is where you would define the command line syntax as well as any instructions to run the host Docker (whether using the SiiM default or a Dockerhub provided one).







