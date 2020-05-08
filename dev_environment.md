# Instalar guake
git clone https://github.com/Guake/guake.git

cd guake

./scripts/bootstrap-dev-debian.sh run make

make

sudo make install

((guake)&)

# Instalar ZSH
sudo apt-get install zsh curl git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Hacer ZSH shell por defecto
chsh -s $(which zsh)

Y luego cerrar sesión

# Instalar Visual Studio Code
mv Descargas/code_1.37.1-1565886362_amd64.deb applications/.

sudo dpkg -i code_1.37.1-1565886362_amd64.deb

# Instalar Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

apt-cache policy docker-ce

sudo apt install docker-ce

sudo systemctl status docker

sudo usermod -aG docker ${USER}

su - ${USER}

id -nG

# Instalar docker-compose
sudo apt install docker-compose

# Instalar asdf (<https://github.com/asdf-vm/asdf>)
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8

cd /home/<name>/.asdf

git checkout "$(git describe --abbrev=0 --tags)"

Add to .zshrc

. $HOME/.asdf/asdf.sh

# Actualizar asdf
asdf update

# Añadir elixir con asdf (<https://github.com/asdf-vm/asdf-elixir>)
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

# Instalar elixir con asdf
asdf install elixir 1.8.1

# Hacer global esa version de elixir
asdf global elixir 1.8.1

# Pasos previos para instalar erlang (<https://github.com/asdf-vm/asdf-erlang>)
apt-get -y install autoconf

# Añadir erlang con asdf
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git

# Instalar erlang con asdf
asdf install erlang ref:master
asdf install erlang 22.3.3

# Hacer global esa version de erlang
asdf global erlang 22.3.3

# Añadir nodejs con asdf (<https://github.com/asdf-vm/asdf-nodejs>)
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git

# Importar clave de desarrolladores de node
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

# Consultar plugins instalados
asdf plugin list

# Instalar nodejs 10 con asdf
asdf install nodejs 10.13.0

# Hacer global esa version de nodejs
asdf global nodejs 10.13.0

# Consultar versiones instaladas (<https://asdf-vm.com/#/core-manage-versions>)
asdf current

# Añadir python asdf (<https://github.com/danhper/asdf-python>)
asdf plugin-add python

# Instalar python 3.X con asdf. Si no hace el build visitar (<https://github.com/pyenv/pyenv/wiki/Common-build-problems>)
asdf install python 3.8-dev
asdf install python 3.7-dev
asdf install python 3.6-dev

# Hacer global esa version de python
asdf global python 3.8-dev

# Arreglar los builds de python
sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

# Mostrar versiones disponibles con asdf
asdf list all <name>

# Instalar pyenv (omitir entonces el resto de secciones inferiores)
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

curl https://pyenv.run | bash

Añadir en el .zshrc ->

    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"

Añadir python con varias versions

    pyenv install 3.6-dev
    pyenv install 3.7-dev
    pyenv install 3.8-dev

#

# Instalar python 3.7
sudo apt update

sudo apt install software-properties-common

sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt install python3.7

# Hacer python 3.7 el python predeterminado
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1

# Desinstalar poetry si esta fallando
curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | POETRY_UNINSTALL=1 python

# Instalar poetry
sudo apt install python3.7-venv

curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python

# Instalar pip (opcional)
python3.7 -m pip install pip

sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
