call plug#begin()
" cmp
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'

" Lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'onsails/lspkind-nvim'
Plug 'tamago324/nlsp-settings.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'ThePrimeagen/harpoon'
call plug#end()

syntax off
colorscheme koehler

lua require("trim")

" Maps
let mapleader = " "

xnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>d "_d
vnoremap <leader>d "_d
map gl $
map gh ^
nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz

" Auto source while writing to init.vim
autocmd BufWritePre * :%s/\s\+$//e
au! BufWritePost $MYVIMRC source %
cmap w!! w !sudo tee %

au FileType go lua require("cmp").setup.buffer({completion={autocomplete=false}})
