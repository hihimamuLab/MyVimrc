# Required
- nodejs</br>
- wget</br>
- curl</br>
- git</br>
- rust(cargo, rust-analyzer)</br>

> [!NOTE]
> After PlugInstall, you have to change branch of ~/.vim/plugged/coc.nvim to release</br>
> **.bashrc recommendation**
> ```
> alias allupdate="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"
> alias config="vim ~/.bashrc"
> alias reload="source ~/.bashrc"
> alias ls="eza --icons -a -l"
> alias lstree="ls && tree"
> alias vimrc="vi ~/.vimrc"
> # git aliases
> alias gb="git branch"
> alias gs="git switch"
> alias gbd="git branch -d"
> alias gl="git gtree"
> 
> function gg() {
>     echo -e "\e[33mgit add .\e[m"
>     echo -e "\e[33mgit commit -m \"$1\"\e[m"
>     git add .
>     git commit -m "$1"
> }
> function lc() {
>     mainrs="./$1/src/main.rs"
>     path="$1"
> 	cargo new --quiet $1 --vcs none
> 		cp /dev/null ./$1/src/main.rs
>     
>     echo -e "struct Solution;\n" >> $mainrs
>     echo "impl Solution {" >> $mainrs
>     echo -e "    fn ${path,,}() {\n        " >> $mainrs
>     echo "    }" >> $mainrs
>     echo -e "}\n" >> $mainrs
>     echo "#[cfg(test)]" >> $mainrs
>     echo "mod tests {" >> $mainrs
>     echo "    #[test]" >> $mainrs
>     echo -e "    fn solution_test() {\n        " >> $mainrs
>     echo -e "    }" >> $mainrs
>     echo -e "}\n" >> $mainrs
>     echo -e "fn main() {}\n" >> $mainrs
> 
>     echo -e "[ \e[32mDone\e[m ] Created $1"
> }
> 
> source ~/.git-completion.bash
> source ~/.git-prompt.sh
> 
> GIT_PS1_SHOWDIRTYSTATE=true
> GIT_PS1_SHOWUNTRACKEDFILES=true
> GIT_PS1_SHOWSTASHSTATE=true
> GIT_PS1_SHOWUPSTREAM=auto
> 
> PS1="\[\e[1;32m\]\u@\h\[\e[m\]:\[\e[1;34m\]\W\[\e[m\]\[\e[33m\]\$(__git_ps1)\[\e[m\]\$ "
> ```