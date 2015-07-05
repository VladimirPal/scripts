sudo apt-get install npm libcurl4-openssl-dev libmysqlclient-dev python-pip python-dev python-all-dev
build-essential libjpeg-dev

sudo pip install pip --upgrade
sudo /usr/local/bin/pip2.7 install virtualenv virtualenvwrapper pip-tools

scp -rp janom@192.168.56.101:~/.ssh/ ~/.ssh/
scp -rp janom@192.168.56.101:~/.config/sublime-text-3/Packages ~/.config/sublime-text-3/Packages
scp janom@192.168.56.101:~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings