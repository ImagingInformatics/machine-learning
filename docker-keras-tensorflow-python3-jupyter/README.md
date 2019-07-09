# SIIM Machine Learning Docker

Docker name: Keras Tensorflow Python3 Jupyter

Author: George Shih / hello@georgeai.xyz

Original upload date: 5/12/2017


Purpose:
---

This docker provides a development environment for using the latest Keras, Tensorflow, Python3.x, Jupyter notebook, and
Jupyterlab for use on a desktop or laptop.

Hardware Requirements:
---

Recommend at least 4GB RAM, although more is always better.  Tensorflow is using
CPU for this Docker


Software Requirements:
--

Please install latest docker from docker.com

Should work with Linux, Windows, and Mac computers (using Intel processors)

Dataset recommendations:
---

Does not include any datasets, but a sample Jupyter notebook is included


Instructions
---

The source code included allows you to build the docker container from scratch, to do so clone
the repository to your local computer and enter "make build" at the command line. 
However, the above is not required to run the software.  If you are on a Mac or *NIX computer
you can use the pre-built docker container at 
(https://hub.docker.com/r/georgezero/keras-tensorflow-python3-jupyter)
by following the instructions below from your computer's terminal program (eg, using xterm):
[Note for windows users: ....]

### Jupyter 

```
docker run -d -p 8888:8888 -p 6006:6006 -e "PASSWORD=password" -v ~/src/ALL_NOTEBOOKS:/notebooks/ALL_NOTEBOOKS --name jupyter --restart always georgezero/keras-tensorflow-python3-jupyter:latest
```

Change `password` to something else

### JupyterLab (Alpha)

```
docker run -d -p 8888-8890:8888-8890 -p 6006:6006 -e "PASSWORD=password" -v ~/src/ALL_NOTEBOOKS:/notebooks/ALL_NOTEBOOKS --name jupyterlab --restart always --entrypoint "jupyter" georgezero/keras-tensorflow-python3-jupyter:latest lab
```

Change `password` to something else.  After building the Docker via either the above methods, start
it by typing "./run_jupyter.sh". 

Once started, access the DOcker by pointing your browser (chrome works best) to the IP address of 
the host machine and append the port number. For example if your DOcker host computer is IP address = 192.168.100.10, 
then point a browser to
'''
http://192.168.100.10:8888
'''

### Directories

You need to create a directory called `~/src/ALL_NOTEBOOKS` on your local machine.  This is where you should keep all your files, so that even if you stop the Docker container, your files will persist there.

