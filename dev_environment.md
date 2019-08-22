# Instalar guake
git clone https://github.com/Guake/guake.git
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

