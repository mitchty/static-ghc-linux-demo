IMAGE:=static-ghc-linux-demo
EXE:=static-demo
TAR:=tar
.PHONY: docker

all: $(EXE)

docker:
	docker build -t $(IMAGE) .

$(EXE): docker
	docker run -a stdout $(IMAGE) /bin/tar -cf - /tmp/dist/build/$(EXE)/$(EXE) | $(TAR) xf - --strip-components=4 -C .
	
	
clean:
	docker rmi -f $(IMAGE)

