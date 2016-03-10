sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y clean
sudo apt-get -y install openjdk-7-jdk
cp ~/.bashrc ~/.bashrc.backup
python3 /home/codio/workspace/bigdata/utilities/fix_bashrc.py
source ~/.bashrc
hadoop namenode -format
echo "Installation complete."
