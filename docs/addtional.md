# Keymaps

I won't repeat the default key here, I'll just mention some of the key which
modified.

## Basic keys

- Cursor

```text
    ^
    k
 < h l >
    j
    v
```

| key | function                      |
| --- | --------                      |
| H   | Move to the front of the line |
| L   | Move to the end of the line   |
| K   | Move up 5 lines               |
| J   | Move down 5 lines             |
| W   | Move back 5 words             |
| B   | Move forward 5 words          |
| jj  | Esc at insert and visual mode |
| i   | start insert mode             |

- View

| keymap     | function                      | doc                 |
| ------     | --------                      | ---                 |
| `Ctrl` + c | put cursor line to the middle | only at insert mode |

- editing

| keymap      | function |
| ------      | -------- |
| `Ctrl` + z  | undo     |
| `Ctrl` + r  | redo     |
| `;` + w     | save     |

- command

In normal mode, you can use `;` to trigger command, no more `Shift` key now.
For example, you will need to press `Shift + ; + q + Enter` to quit neovim,
but now `; + q + Enter` is only needed.

## LEADER key

leader key is `<Space>`.

## Save and Quit

| keymap                  | function                |
| ------                  | --------                |
| `LEADER`+s              | save                    |
| `LEADER`+q              | save and quit           |
| `Ctrl + Alt` + q              | quit                    |

## Copy and Paste

| keymap       | function                                              |
| ------       | --------                                              |
| `leader` + y | copy to system clipboard (select text at visual mode) |
| `leader` + p | paste from system clipboard                           |

## buffer line

| keymap      | function                                     |
| ------      | --------                                     |
| `,`         | move to next tab                             |
| `.`         | move to front tab                            |
| `<Alt> + >` | move current tab to next tab                 |
| `<Alt> + <` | move current tab to front tab                |
| `<Ctrl> + c` | open pick mode and close the selected window |

## Windows manage

| keymap   | function                            |
| ------   | --------                            |
| s+`jhkl` | move cursor to `up/left/down/right` |
| `arrow`  | Resize windows in normal mode       |

## File Exploer

| keymap        | function                                 |
| ------        | --------                                 |
| <Ctrl>+n            | open nvim tree explorer                  |



## Symbols

![image](https://raw.githubusercontent.com/simrat39/rust-tools-demos/master/symbols-demo.gif) 

Press `<LEADER>` + l to activate it.

## lazygit

![image](https://raw.githubusercontent.com/jesseduffield/lazygit/assets/staging.gif) 

press `ctrl+g` to activate it. (Install lazygit first)

## vim-surround

[vim-surround](https://github.com/tpope/vim-surround) 
can help you do all the 'surround' stuff easyily。

<img style="max-width: 500px; max-height: 500px" 
src="https://camo.githubusercontent.com/334f5a06cbee4141889dfdf18a7c51a0ea408edb4d79f4dbe77e4d8b937d5a0b/68747470733a2f2f74776f2d77726f6e67732e636f6d2f696d6167652f737572726f756e645f76696d2e676966" />

| key  | function                                                                    |
| ---- | ------------------------------------------------------------                |
| S    | press big S when you selected text, and press a symble you want to surround |
| cs   | find and replace symbol                                                     |
| ds   | revert to original text                                                     |

"HELLO" -> press `CS"'` change double quote to single quote -> 'HELLO'

## Cpp

Use command `:LspInstall cpp` to automatically configured up clangd as lsp server.

Use command `:Neoformat` to format your cpp file.
[clang-format](https://clang.llvm.org/docs/ClangFormat.html) is needed. It will read `.clang-format`
from your project root.

If your project library is individual and the lsp will give you annoying hint like header file not
found..etc, you can run below command to set up your project.

```bash
#if you are using cmake
cmake -BDebug . -DCMAKE_EXPORT_COMPILE_COMMANDS=1
ln -s Debug/compile_commands.json .
```


# Comment

Use `gcc` to comment out a line (takes a count), `gc` to comment out the target
of a motion (for example, gcap to comment out a paragraph), `gc` in visual mode
to comment out the selection

# FTerm

![image](https://user-images.githubusercontent.com/24727447/113905276-999bc580-97f0-11eb-9c01-347de0ff53c9.png) 

Press `<Ctrl>+\` to open a terminal, press it again to close the window.


# Telescope

![screenshot](https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/telmedia.png) 

```text
<leader>ff Telescope find_files
<leader>fp Telescope media_files
<leader>fg Telescope live_grep
<leader>fb Telescope buffers
<leader>fh Telescope help_tags
```

