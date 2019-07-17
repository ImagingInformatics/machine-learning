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
that they make public. 

SiiM staff will then use that repo as the source to make a sub-module in the 
  http://github.com/ImagingInformatics/machine-learning 

repository. Submitters will always maintain control over their own work.
....


Chapter 3
--
If submitters would like to maximize their audience they should
link their code to a DOckerHub site to prebuild their DOckers for users


CHapter 4
--
Describe how to set up and run your DOcker, including any run-time
switches, any open ports the DOcker uses, etc



Chapter 5
--
Submitters should assume that other users are not intimately familiar with their
work. Given that, a consistent template in the  Docker README  would be helpful. We
suggest that submitters consider the following structure

1. Docker name:
	1. Author: email and or URL
	1. Original Upload date:
	1. Purpose: WHat is this Docker for. Is is a premade ML development environment? A turnkey demo?
	1. Hardware Requirement: If your Docker requires a minimum amount of RAM or a base GPU, this would be the place to call this out. 
	1. Software Requirement: Any software expectations beyond those covered in HOWTO-1 (or installed in the  Docker itself) should be called out here
	1. Dataset recommendation: Submitters should also point users to any needed image sets to train or run their Docker. At present SiiM has very limited availability of annotated and curated image sets.
	1. Runtime Instructions:  This is where you would define the DOcker command line syntax as well as any instructions to run apps within the Docker






