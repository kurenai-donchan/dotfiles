pushd /tmp
wget "https://github.com/peco/peco/releases/download/v0.5.2/peco_linux_386.tar.gz"

# ��
tar xzvf peco_linux_386.tar.gz

# �ړ�
cd peco_linux_386

# ���s������t�^
sudo chmod +x peco

# peco��z�u
sudo cp peco /usr/local/bin

# ���s�ł��邩���m�F
peco --version

popd
