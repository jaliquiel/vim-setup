# vim-setup
Personal vim setup

Link to explanation on adding setup to git: https://stackoverflow.com/questions/18197705/adding-your-vim-vimrc-to-github-aka-dot-files

# Instructions
- Create a .vimrc and .vim/
- Add "runtime vimrc" to your .vimrc
- Clone the git repo into the .vim/ directory
```
echo "runtime vimrc" > .vimrc
git clone https://github.com/jaliquiel/vim-setup.git .vim
```

# Set up swap and undo file directories
```
mkdir .undo
mkdir .swp
```

# Ideavim setup
- Create a .ideavimrc file
- Direct it to your ideavimrc inside the folder
```
echo source ~/.vim/ideavimrc > .ideavimrc
```


# Download vim-plug
- Inside your .vim folder, create an autoload directory
- Download plug.vim
```
mkdir autoload
cd autoload
curl -o plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
