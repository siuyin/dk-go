FROM siuyin/ubuntu:build-essential
RUN apt update -y; apt install -y vim
ADD https://go.dev/dl/go1.25.6.linux-amd64.tar.gz /usr/local/
RUN tar -C /usr/local -xf /usr/local/go1.25.6.linux-amd64.tar.gz
ENV GOPATH=/go
ENV PATH=/usr/local/go/bin:${PATH}
CMD ["bash" ]
