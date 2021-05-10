" I couldn't find whose Nvim setup script I've used as a base, unfortunately :(

" Autoinstall Vim-Plug {
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif
" } Autoinstall Vim-Plug

" Plugins {
call plug#begin()

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'itchyny/lightline.vim'
Plug 'townk/vim-autoclose'
Plug 'sheerun/vim-polyglot'

call plug#end()
" } Plugins

" Colors {
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable
set background=dark
" } Colors

" Spaces & Tabs {
set tabstop=4       " Number of visual spaces per TAB
set softtabstop=4   " Number of spaces in TAB when editing
set shiftwidth=4    " Number of spaces to use for autoindenting
set expandtab       " Tabs are spaces
set autoindent
set copyindent      " Copy indentation from the previous line
" } Spaces & Tabs

" UI Config {
set number          " Show line numbers
set showcmd         " Show command line on the bottom
set wildmenu        " Visual autocompletion for the command menu
set showmatch       " Highlight matching braces
set laststatus=2    " Window always shows the status line
" } UI Config

" Search {
set incsearch       " Increasing search: search as characters are entered
set hlsearch        " Highlight matches
" } Search

" C++ Enhanced Highlighting {
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
" } C++ Enhanced Highlighting
