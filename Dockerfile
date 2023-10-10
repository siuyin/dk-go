FROM siuyin/go
RUN DEBIAN_FRONTEND=noninteractive apt update && DEBIAN_FRONTEND=noninteractive apt-get install -y curl wget git tmux ansible iputils-ping exuberant-ctags sudo
ADD https://download.docker.com/linux/static/stable/x86_64/docker-24.0.6.tgz /
RUN tar -C /usr/local/bin -xf /docker-24.0.6.tgz --strip-components=1 docker/docker
RUN addgroup --gid 133 docker
RUN adduser siuyin --disabled-password
RUN adduser siuyin docker
COPY .vimrc /home/siuyin/.vimrc
RUN echo 'siuyin ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN chown siuyin:siuyin /home/siuyin/.vimrc
USER siuyin
WORKDIR /home/siuyin
RUN mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
RUN git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
ENV GOPATH=/home/siuyin/go
CMD ["bash" ]
