My common dotfiles for Linux Mint, Fedora, Mac

e.g. my vim, terminal and font configs.

install:

    sudo apt-get update
    sudo apt-get install git # or yum install git
     
    ssh-keygen -b 8192
    cat ~/.ssh/id_rsa.pub
    
    # assign generated ssh key to your github profile

    git clone git@github.com:gabrielecipriano/dotfiles.git .dotfiles
    cd .dotfiles
    ./setup.sh
