apt-get update
apt-get install -y git ruby ruby-dev make gcc dos2unix nodejs npm libcurl4-openssl-dev aspell aspell-en software-properties-common
ln -s /usr/bin/nodejs /usr/bin/node

sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm
rvm install 2.4.1

gem install jekyll bundler

if [ ! -d "/vagrant/git" ]; then
  mkdir /vagrant/git
fi
cd /vagrant/git
if [ ! -d "/vagrant/git/genderkit" ]; then
  git clone https://github.com/genderkit/genderkit.git
fi
cd /vagrant/git/genderkit
su vagrant
bundle install
