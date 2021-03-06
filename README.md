# Installation
---
# Install Neovim
https://github.com/neovim/neovim/wiki/Installing-Neovim

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p ~/.bin
mv nvim.appimage ~/.bin

cd ~/.bin
ln -s nvim.appimage nv
ln -s nvim.appimage nvim
```
add the following line in ~/.bashrc
```
echo "export PATH=\${HOME}/.bin:\$PATH" >> ~/.bashrc
```
Then download my configuration files
```
git clone https://github.com/subratappt/nvim.git ~/.config/nvim
```

# Post installation
```
:LspInstall python
:LspInstall cpp
:LspInstall fortran
```

# nvim
Neovim configuration file

# Vim shortcuts
- https://devhints.io/vim
- https://vim.rtorr.com/


# Credits
- https://github.com/Avimitin/nvim
- https://github.com/NvChad/NvChad
