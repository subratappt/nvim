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
ln -s nv nvim.appimage
```
add the following line in ~/.bashrc
```
export PATH=${HOME}/.bin:$PATH
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


# Credits
- https://github.com/Avimitin/nvim
- https://github.com/NvChad/NvChad
