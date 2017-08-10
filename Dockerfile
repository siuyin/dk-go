FROM siuyin/go
RUN apt install -y pkgconf libzmq1 libzmq-dev git vim
ENV GOPATH /go
ENV PATH /usr/local/go/bin:${PATH}
RUN go get github.com/pebbe/zmq2
CMD ["bash"]
