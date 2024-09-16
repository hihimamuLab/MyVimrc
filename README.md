# Require
- nodejs</br>
- npm</br>
- yarn</br>
- git</br>
- rust(cargo, rust-analyzer)</br>
# Used
1. **Install Node.js**
```
sudo apt install nodejs
node -v
```
2. **Install Cargo**
```
curl https://sh.rustup.rs -sSf | sh
echo -e $'export PATH=\"$HOME/.cargo/bin:$PATH\"' >> ~/.bashrc
source .bashrc
```
```
cargo -V
```
3. **Install MyVimrc**
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -o ~/.vimrc https://github.com/hihimamuLab/MyVimrc/releases/download/1/_.vimrc
vim
(vim):PlugInstall
(vim):qa
cd ~/.vim/plugged/coc.nvim
git checkout release
```
