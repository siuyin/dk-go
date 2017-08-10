FROM siuyin/ubuntu:build-essential
RUN apt install -y pkgconf libzmq1 libzmq-dev git
ADD https://storage.googleapis.com/golang/go1.8.3.linux-amd64.tar.gz /usr/local/
ENV GOPATH /go
ENV PATH /usr/local/go/bin:${PATH}
RUN go get github.com/pebbe/zmq2
RUN apt install -y vim
CMD ["bash"]
