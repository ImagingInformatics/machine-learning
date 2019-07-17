HOWTO 3 of the  Machine Learning Comittee of SIIM. 

Intended Audience:
Accomplished ML developers who wish to share code with
SiiM

 Table of Contents
-------------------------------------
Chapter 0: Background
Chapter 1: Enabling your code repo to be used by SiiM
Chapter 2: Going the extra step - linking your code to DOckerhub
Chapter 3: Usage Instructions
Chapter 4: Documentation guidelines


Chapter 0
------------------------------------------
SiiM's objectives for the Machine Learning Comm. are described in HOWTO-1
To realize those objective, submitters should strive to make their
efforts accessable to both newbies and experienced practitionaers. Towards that 
goal we suggest the following guidelines for packaging code and documentation.


Chapter 1
-----------------------------------------------------
At a minimum, contributors should have a github repository for their own code
that they make public. 

SiiM staff will then use that repo as the source to make a submodule in the 
  http://github.com/ImagingInformatics/machine-learning 

repository. Submitters will always maintain control over thier own work.
....


Chapter 2
-------------------------------------------
If submitters would like to maximize their audience they should
link their code to a DOckerHub site to prebuild their DOckers for users


CHapter 3
-----------------------------------------
Describe how to set up and run your DOcker, including any run-time
switches, any open ports the DOcker uses, etc



Chapter 4
---------------------------------------------
Submitters should assume that other users are not intimately familiaer with their
work. Given that, a consistent template in the  Docker README  would be helpful. We
suggest that submitters consider the follwoing structure

Docker name:
Author: email and or URL
Original Upload date:


Purpose:
WHat is this Docker for. Is is a premade ML development environmnet? A turnkey
demo?

Hardware Requirement:
If your Docker requires a minimum amount of RAM or a base GPU, this would be the
place to call this out. 

Software Requiremnt:
Any software expectations beyond those covered in HOWTO-1 (or installed in teh 
Docker itself) should be called out here

Dataset reccomenddations:
Submitters should also point users to any needed image sets to train or run their
Docker. At present SiiM has very limited availablity of annotated and curated image
sets.

Runtime Instrutions: 
This is where you would define the DOcker command line syntax as well as any instructions
to run apps within the Docker






