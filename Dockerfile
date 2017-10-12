FROM siuyin/go
RUN apt update && apt-get install -y curl wget git tmux 
RUN adduser siuyin --disabled-password
CMD ["bash" ]
