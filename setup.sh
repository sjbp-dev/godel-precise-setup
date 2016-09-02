#!/bin/bash
# A simple sh script to configuring fresh Ubuntu Ubuntu 12.04.* LTS instance
# The purpose is to get my dev env up and running quickly

# Make $HOME/bin folder
mkdir -p $HOME/bin

# Install basic utils/tools
sudo apt-get update
sudo apt-get install -y curl	# curl util
#sudo apt-get install -y make gcc # make util and C compiler
sudo apt-get install -y unzip
sudo apt-get install -y python-pip # install pip

# Install latest emacs
sudo apt-get install -y emacs

# git pull and install dotfiles as well
cd $HOME
if [ -d ./godel-dotfiles/ ]; then
    mv godel-dotfiles godel-dotfiles.old
fi
if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi
git clone https://github.com/sjbp-dev/godel-precise-dotfiles.git
# ln -sb godel-precise-dotfiles/.bash_profile .
ln -sb godel-precise-dotfiles/.bashrc .
ln -sb godel-precise-dotfiles/.bash_aliases .
#ln -sb godel-precise-dotfiles/.bashrc_custom .
ln -sb godel-precise-dotfiles/.gitconfig .
ln -sb godel-precise-dotfiles/.screenrc .
ln -sf godel-precise-dotfiles/.emacs.d .


##### Everything below this line needs to be reviewed #####

# TODO (SeboJBP): Automate Python library installation 
# Install Python data-related libraries ("SciPy Stack")
# see: http://www.scipy.org/stackspec.html
# sudo apt-get install -y python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
# Install python scikit-learn package 
# see: http://scikit-learn.org/
# sudo apt-get install -y python-sklearn

# Install Google App Engine
#wget -P $HOME/bin/ https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.4.zip
#unzip $HOME/bin/google_appengine_1.9.4.zip

###########################################################
