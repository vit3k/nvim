
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) 
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'dracula/vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'nvim-lualine/lualine.nvim'

Plug 'L3MON4D3/LuaSnip'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'ray-x/lsp_signature.nvim'

Plug ('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })
Plug 'nvim-lua/lsp-status.nvim'
Plug 'akinsho/toggleterm.nvim'
vim.call('plug#end')

require('plugins_config')

