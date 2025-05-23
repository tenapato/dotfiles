local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'dracula/vim'
  use 'ayu-theme/ayu-vim'
  use "rebelot/kanagawa.nvim"
  use 'AlexvZyl/nordic.nvim'
  use { "scottmckendry/cyberdream.nvim" }
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  --use 'nvim-treesitter/nvim-treesitter'
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'HiPhish/rainbow-delimiters.nvim'
  use 'bluz71/vim-nightfly-colors'
  use 'vim-test/vim-test'
  use 'lewis6991/gitsigns.nvim'
  use 'preservim/vimux'
  use 'christoomey/vim-tmux-navigator'
  use 'tpope/vim-fugitive'
  use 'cameron-wags/rainbow_csv.nvim'
 -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"

  use "github/copilot.vim"

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "glepnir/lspsaga.nvim",
  }

  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.6',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "BurntSushi/ripgrep"

  use "folke/noice.nvim"

  use "MunifTanjim/nui.nvim"

  use "rcarriga/nvim-notify"

  use "numToStr/Comment.nvim"

  use "ThePrimeagen/harpoon"

  --autocompletion
--  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
