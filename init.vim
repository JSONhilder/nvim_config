">> load plugins
call plug#begin(stdpath('data') . 'vimplug')
    " Telescope stuff
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Lsp stuff
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'hrsh7th/nvim-compe'
    Plug 'glepnir/lspsaga.nvim'

    " Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    
    " Tree sitter 
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'

    " Galaxy line
    Plug 'glepnir/galaxyline.nvim', { 'branch': 'main' }
    Plug 'kyazdani42/nvim-web-devicons'  " needed for galaxyline icons
    
    " Tpope 
    Plug 'tpope/vim-ragtag'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-fugitive'
    
    " Git Gutter
    Plug 'airblade/vim-gitgutter'

    Plug 'tomtom/tcomment_vim'

    " auto complete with signatures
    Plug 'ray-x/lsp_signature.nvim'
    
    " Gruvbox goodness...
    Plug 'morhetz/gruvbox'

    " ToggleTerm
    Plug 'akinsho/nvim-toggleterm.lua'
call plug#end()

colorscheme gruvbox

" basic settings
syntax on
set number
set relativenumber
set ignorecase      " ignore case
set smartcase       " but don't ignore it, when search string contains uppercase letters
set nocompatible
set incsearch       " do incremental searching
set visualbell
set expandtab
set tabstop=4
set ruler
set smartindent
set shiftwidth=4
set hlsearch
set virtualedit=all
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent
set mouse=a  " mouse support
set noswapfile
set splitright
set splitbelow
set termguicolors
set hidden
" set leader key to spacebar
let g:mapleader=" "

let g:UltiSnipsExpandTrigger="<tab>"

" netrw settings
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'


" >> Telescope bindings
nnoremap <Leader>pp :lua require'telescope.builtin'.builtin{}<CR>

" most recentuly used files
noremap <Leader>m :lua require'telescope.builtin'.oldfiles{}<CR>

" find buffer
nnoremap ; :lua require'telescope.builtin'.buffers{}<CR>

" find in current buffer
nnoremap <Leader>/ :lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>

" bookmarks
nnoremap <Leader>' :lua require'telescope.builtin'.marks{}<CR>

" git files
nnoremap <Leader>f :lua require'telescope.builtin'.git_files{}<CR>

" folders files
nnoremap <Leader>ff :lua require'telescope.builtin'.file_browser{}<CR>

" all files
nnoremap <Leader>bfs :lua require'telescope.builtin'.find_files{}<CR>

" ripgrep like grep through dir
nnoremap <Leader>rg :lua require'telescope.builtin'.live_grep{}<CR>

" pick color scheme
nnoremap <Leader>cs :lua require'telescope.builtin'.colorscheme{}<CR>

" show file git difs in new pane
nnoremap <Leader>gc :vert Git diff <CR>

" show git status with changes
nnoremap <Leader>gs :lua require'telescope.builtin'.git_status{}<CR>

" open terminal below                                      :startinsert <CR> 
nnoremap <Leader>rr :sp \| :terminal<CR> :resize 10 <CR>

" kill current buffer
nnoremap <Leader>bd :bd! <CR>

" Clear highlighting on escape in normal mode
nnoremap <Leader>h :noh <CR>

" >> setup nerdcomment key bindings
let g:NERDCreateDefaultMappings = 0
let g:NERDSpaceDelims = 1

xnoremap <Leader>ci :call NERDComment('n', 'toggle')<CR>
nnoremap <Leader>ci :call NERDComment('n', 'toggle')<CR>
                                                  
" >> Lsp key bindings
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <C-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K     <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-p> <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> <C-n> <cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> gf    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> gn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> ga    <cmd>Lspsaga code_action<CR>
xnoremap <silent> ga    <cmd>Lspsaga range_code_action<CR>
nnoremap <silent> gs    <cmd>Lspsaga signature_help<CR>



lua <<EOF
require("lsp")
require("treesitter")
require("statusbar")
require("completion")
require("toggleterminal")
EOF
