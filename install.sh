cd
ln -s -f .tmux/.tmux.conf
cd .tmux
wget  https://gist.githubusercontent.com/wandernauta/6800547/raw/2c2ad0f3849b1b1cd1116b80718d986f1c1e7966/sp
chmod +x sp
cp .bash_aliases ~/
echo "source ~/.bash_aliases" >>  ~/.bashrc
source ~/.bashrc
