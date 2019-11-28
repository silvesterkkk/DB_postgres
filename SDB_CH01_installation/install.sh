echo "check homebrew install"
which brew

echo "install homebrew if not exist"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo "Remove previous version of PostgreSQL"
brew uninstall --force postgresql

echo "Delete all Files of Postgres"
rm -rf /usr/local/var/postgres

echo "check uninstall"
postgres -V

echo "Install Postgres with Homebrew"
brew install postgresql

echo "Check Postgres version"
postgres --version

echo "Install PostGIS with Homebrew"
brew install postgis

echo "install zsh"
brew install zsh

echo "install oh my zsh. If asked to set it as default, click Y"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

cd ~
ls -a
echo "if locate .zshrc"
vim .zshrc
echo "in vim, insert PATH to export"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/12/bin

