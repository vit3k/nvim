set number

set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set encoding=utf8
let g:airline_powerline_fonts = 1
set mouse=a
set nowrap
set tw=0
"set autochdir

call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
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

Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
call plug#end()

if (has("termguicolors"))
	set termguicolors
endif
syntax enable
colorscheme dracula

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>cc <cmd>NvimTreeToggle<cr>
set completeopt=menu,menuone,noselect

lua require('init')
