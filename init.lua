vim.o.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.encoding = 'utf8'
--let g:airline_powerline_fonts = 1
vim.o.mouse = 'a'
vim.wo.wrap = false
vim.o.tw = 0

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
vim.call('plug#end')

vim.o.termguicolors = true
vim.cmd("syntax enable")
vim.cmd("colorscheme dracula")

local function map(mode, key, cmd)
    vim.api.nvim_set_keymap(mode, key, cmd, { noremap = true, silent = true })
end


map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
map('n', '<leader>cc', '<cmd>NvimTreeToggle<cr>')
map('n', '<leader>gd', '<cmd>Telescope lsp_definitions<cr>')
map('n', '<leader>gi', '<cmd>Telescope lsp_implementations<cr>')
map('n', '<leader>fr', '<cmd>Telescope lsp_references<cr>')

vim.o.completeopt="menu,menuone,noselect"

require('init')
