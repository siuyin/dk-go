FROM siuyin/go
RUN apt update && apt-get install -y curl wget git tmux 
RUN adduser siuyin --disabled-password
USER siuyin
WORKDIR /home/siuyin
RUN mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
RUN git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
COPY .vimrc /home/siuyin/.vimrc
RUN chown siuyin:siuyin /home/siuyin/.vimrc
CMD ["bash" ]
