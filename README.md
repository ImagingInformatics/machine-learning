# SIIM Machine Learning

We're posting some tools to get started with ML.

## Docker Container for ML (George Shih)

Keras Tensorflow Python3 Jupyter JupyterLab

### Jupyter 

```
docker run -d -p 8888:8888 -p 6006:6006 -e "PASSWORD=password" -v ~/src/ALL_NOTEBOOKS:/notebooks/ALL_NOTEBOOKS --name jupyter --restart always georgezero/keras-tensorflow-python3-jupyter-pip:latest
```

Change `password` to something else

### JupyterLab (Alpha)

```
docker run -it -p 8888-8890:8888-8890 -p 6006:6006 -e "PASSWORD=password" -v ~/src/ALL_NOTEBOOKS:/notebooks/ALL_NOTEBOOKS --name jupyterlab --restart always --entrypoint "jupyter" georgezero/keras-tensorflow-python3-jupyter-pip:latest lab
```

Change `password` to something else

### Directories

You need to create a directory called `~/src/ALL_NOTEBOOKS` on your local machine.  This is where you should keep all your files, so that even if you stop the Docker container, your files will persist there.

## Other Docker Containers or Information

Stay tuned..
