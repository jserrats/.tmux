cd
ln -s -f .tmux/.tmux.conf
ln -s -f .tmux/.bash_aliases
cd .tmux
wget  https://gist.githubusercontent.com/wandernauta/6800547/raw/2c2ad0f3849b1b1cd1116b80718d986f1c1e7966/sp
chmod +x sp
echo "source ~/.bash_aliases" >>  ~/.bashrc
source ~/.bashrc
