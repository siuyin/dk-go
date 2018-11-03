FROM siuyin/go
RUN apt update && apt-get install -y curl wget git tmux ansible iputils-ping exuberant-ctags
ADD https://download.docker.com/linux/static/stable/x86_64/docker-18.06.1-ce.tgz /
RUN tar -C /usr/local/bin -xf /docker-18.06.1-ce.tgz --strip-components=1 docker/docker
RUN addgroup --gid 117 docker
RUN adduser siuyin --disabled-password
RUN adduser siuyin docker
COPY .vimrc /home/siuyin/.vimrc
RUN chown siuyin:siuyin /home/siuyin/.vimrc
USER siuyin
WORKDIR /home/siuyin
RUN mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
RUN git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
ENV GOPATH=/home/siuyin/go
CMD ["bash" ]
