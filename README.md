# nvim
Neovim configuration file

```git clone https://github.com/subratappt/nvim.git ~/.config/nvim```


<details>
  <summary>Fix:</summary>
  
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
</details>
