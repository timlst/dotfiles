call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
" Plug 'valloric/youcompleteme', {  'do': './install.py' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-repeat'
" Plug 'flazz/vim-colorschemes'
Plug 'https://github.com/calincru/peaksea.vim'
Plug 'sirver/ultisnips'
Plug 'elzr/vim-json', { 'for' : 'json' }
Plug 'tpope/vim-markdown', { 'for' : 'markdown' }
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/mru.vim'
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
Plug 'dylanaraps/wal'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'

call plug#end()

source ~/.vimconfig/basic.vim
source ~/.vimconfig/extended.vim
source ~/.vimconfig/filetypes.vim
source ~/.vimconfig/my_configs.vim
source ~/.vimconfig/plugins_config.vim
