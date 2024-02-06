vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true


-- Enable relative line numbers
vim.o.number = true
vim.o.relativenumber = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
