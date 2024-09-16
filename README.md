# Require
- nodejs</br>
- wget</br>
- git</br>
- rust(cargo, rust-analyzer)</br>

**each newish version**
# Used
0. **Update latest and install wget**
```
sudo apt update
sudo apt upgrade -y
sudo apt autoremove
sudo apt install wget
```
1. **Install Node.js**
```
sudo apt install nodejs
node -v
```
2. **Install Cargo, rust-analyzer**
```
curl https://sh.rustup.rs -sSf | sh
echo -e $'export PATH=\"$HOME/.cargo/bin:$PATH\"' >> ~/.bashrc
source .bashrc
```
```
cargo -V
rupstup update
rustup component add rustfmt clippy rust-analyzer
rustup component list --installed
```
3. **Install MyVimrc**
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wget -O ~/.vimrc https://github.com/hihimamuLab/MyVimrc/releases/latest/download/_.vimrc
vim
(vim):PlugInstall
(vim):qa
cd ~/.vim/plugged/coc.nvim
git checkout release
```
4. **Last check**
```
vim
```
If you can execute this command without error, completion.
