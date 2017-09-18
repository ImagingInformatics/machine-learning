FROM python:3.4

RUN apt-get update && apt-get install -y \
		libblas-dev \
		liblapack-dev\
    	libatlas-base-dev \
		gfortran \
        python3-pip \
        tk-dev \
        python-tk \
        python3-tk \
        python3-matplotlib \
        pkg-config \
        libfreetype6-dev \
        rsync wget curl zip git zsh vim tmux \
		&& \

    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -U pip \
        setuptools 

RUN pip --no-cache-dir install \
       	ipykernel \
        jupyter \
        numpy \
        matplotlib \
        scipy \
        scikit-image \
        scikit-learn \
        keras \
	xlrd \
	openpyxl \
	jupyterlab \
	nltk \
	textblob \
	spacy \
	lesscpy \
        && \
    python3 -m ipykernel.kernelspec

# Jupyter themes
RUN pip install -U jupyterthemes
RUN jt -t oceans16 -f roboto -fs 12 -tf roboto -tfs 13 -T -nf inconsolata -nfs 12

# Jupyter notebook config to accept password
COPY jupyter_notebook_config.py /root/.jupyter/

# JupyterLab
RUN jupyter serverextension enable --py jupyterlab --sys-prefix

# Jupyter has issues with being run directly:
# https://github.com/ipython/ipython/issues/7062
# We just add a little wrapper script.
COPY run_jupyter.sh /

ENV TENSORFLOW_VERSION 1.3.0

RUN pip --no-cache-dir install \
	https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.3.0-cp34-cp34m-linux_x86_64.whl
	#https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.2.1-cp34-cp34m-linux_x86_64.whl
	#https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.1.0-cp34-cp34m-linux_x86_64.whl
	#https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.0.0-cp34-cp34m-linux_x86_64.whl

# Something Jupyter suggests to do:
# http://jupyter-notebook.readthedocs.io/en/latest/public_server.html#docker-cmd
ENV TINI_VERSION v0.14.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

# add gist button to notebook toolbar
RUN jupyter nbextension install https://rawgithub.com/minrk/ipython_extensions/master/nbextensions/gist.js
RUN jupyter nbextension enable gist

# set up zsh config and copy script for vim config
RUN wget -O ~/.zshrc http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
RUN echo "TERM=xterm-256color" >> ~/.zshrc

# Make zsh default
RUN chsh -s /usr/bin/zsh
# Copy sample notebooks.
COPY notebooks /notebooks

# tensorboard
EXPOSE 6006

# jupyter
EXPOSE 8888
EXPOSE 8889

WORKDIR "/notebooks"

#CMD ["/bin/zsh"]
CMD ["/run_jupyter.sh"]
