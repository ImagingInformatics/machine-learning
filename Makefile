IMGNAME = keras-tensorflow-python3-jupyter
VERSION = 1.1.0 
USER=georgezero
.PHONY: all build test taglatest  

all: build test

build:
	@docker build -t $(IMGNAME):$(VERSION) --rm . && echo Buildname: $(IMGNAME):$(VERSION)
test:
	docker run -it \
				-p 8888:8888 -p 6006:6006 -v ~/src/tf:/notebooks \
        --name $(IMGNAME)_test \
				--rm \
				$(IMGNAME):$(VERSION) \
run: 
	docker run -it \
				-p 8888:8888 -p 6006:6006 -v ~/src/tf:/notebooks \
        --name $(IMGNAME)_run \
				--rm \
				$(IMGNAME):$(VERSION) 
stop:
	@docker stop $(IMGNAME)_test || docker stop $(IMGNAME)_run || docker stop $(IMGNAME)_shell
	@docker rm $(IMGNAME)_test || docker rm $(IMGNAME)_run || docker rm $(IMGNAME)_shell
shell:
	@sudo docker run -it \
        --name $(IMGNAME)_shell \
        -ti --entrypoint=/bin/zsh \
				--rm \
				$(IMGNAME):$(VERSION) || sudo docker stop $(IMGNAME)_shell && docker rm $(IMGNAME)_shell
clean:
	@docker ps -a |grep $(IMGNAME) |cut -f 1 -d' '|xargs -P1 -i docker stop {}
	@docker ps -a |grep $(IMGNAME) |cut -f 1 -d' '|xargs -P1 -i docker rm {}
	@docker rmi $(IMGNAME):$(VERSION)
taglatest:
	docker tag $(IMGNAME):$(VERSION) $(IMGNAME):latest
	docker tag $(IMGNAME):$(VERSION) $(USER)/$(IMGNAME):$(VERSION)
	docker tag $(IMGNAME):$(VERSION) $(USER)/$(IMGNAME):latest
push:
	docker push $(USER)/$(IMGNAME)
	docker push $(USER)/$(IMGNAME):$(VERSION)
release: taglatest push
