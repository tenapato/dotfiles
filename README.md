## How to run

### Tmux    
```bash
tmux source ~/.tmux.conf
```

### Nvim

```bash
:so
:PackerSync
```


## File Structure

```
.config
├── .gitignore
├── .tmux.conf
├── alacritty
│   ├── alacritty.yml
│   ├── ayu-dark.yml
│   ├── ayu-mirage.yml
│   ├── catppuccin-mocha.yml
│   └── tokyo-night.yml
├── nvim
│   ├── README.md
│   ├── init.lua
│   ├── lua
│   │   ├── .DS_Store
│   │   └── core
│   │       ├── keymaps.lua
│   │       ├── options.lua
│   │       ├── plugin_config
│   │       │   ├── colorscheme.lua
│   │       │   ├── comment.lua
│   │       │   ├── completions.lua
│   │       │   ├── copilot.lua
│   │       │   ├── gitsigns.lua
│   │       │   ├── init.lua
│   │       │   ├── lsp_config.lua
│   │       │   ├── lualine.lua
│   │       │   ├── mason.lua
│   │       │   ├── noice.lua
│   │       │   ├── nvim-tree.lua
│   │       │   ├── rainbow.lua
│   │       │   ├── telescope.lua
│   │       │   ├── treesitter.lua
│   │       │   └── vim-test.lua
│   │       └── plugins.lua
│   └── plugin
│       └── packer_compiled.lua
```
