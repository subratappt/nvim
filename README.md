# nvim
Neovim configuration file

```git clone https://github.com/subratappt/nvim.git ~/.config/nvim```


<details>
  <summary>Fix for nvim-treesitter:</summary>
  
Fix:
``` lua
-- ~/.local/share/nvim/lazy/nvim-treesitter/lua/nvim-treesitter/shell_command_selectors.lua`
    local args = {
      "-o",
      "parser.so",
      "-I./src",
      repo.files,
      "-Os",
      "-std=c99"
    }
```

or 

CC=/path-of-gcc-that-support-c99-or-clang nvim
</details>
