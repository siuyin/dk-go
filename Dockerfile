FROM siuyin/go
RUN apt update && apt-get install -y curl wget git tmux 
RUN adduser siuyin --disabled-password
USER siuyin
WORKDIR /home/siuyin
RUN mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
CMD ["bash" ]
