#!/bin/sh
docker run --name godev -it \
	-v godata:/home/siuyin/go \
	-v $(pwd):/h \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-p 3999:3999 \
	-h godev \
	siuyin/go:dev	
