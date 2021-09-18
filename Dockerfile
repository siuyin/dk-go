FROM siuyin/ubuntu:build-essential
RUN apt update -y; apt install -y vim
ADD https://storage.googleapis.com/golang/go1.17.1.linux-amd64.tar.gz /usr/local/
RUN tar -C /usr/local -xf /usr/local/go1.17.1.linux-amd64.tar.gz
ENV GOPATH /go
ENV PATH /usr/local/go/bin:${PATH}
CMD ["bash" ]
