" Settings
set nu
set relativenumber

let g:netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

set ignorecase
set smartcase

set nowrap

set hlsearch
set incsearch

set splitright
set splitbelow

set scrolloff=8
set signcolumn=number
set isfname+=@-@

set updatetime=50
set colorcolumn=80

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Remaps
let mapleader = " "
inoremap jk <ESC>
vnoremap jk <ESC>
nnoremap <leader>n :nohl<CR>

nnoremap <leader>pv :Ex<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

nnoremap J mzJ`z
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzzv
nnoremap N Nzzzv

xnoremap <leader>p "_dP
nnoremap <leader>d "_d
vnoremap <leader>d "_d

nnoremap Q <nop>

nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>
nnoremap <leader>X <cmd>!chmod +x %<CR>

nnoremap <leader>xcc :w !wc -m<CR>
nnoremap <leader>xcw :w !wc -w<CR>
nnoremap <leader>xcb :w !wc -c<CR>
nnoremap <leader>xcl :w !wc -l<CR>

" Commands
command! WritingMode setlocal spell wrap linebreak textwidth=80
command! EndWritingMode setlocal nospell nowrap nolinebreak textwidth=0

command! Tab2 setlocal shiftwidth=2 tabstop=2 softtabstop=2
command! Tab4 setlocal shiftwidth=4 tabstop=4 softtabstop=4
command! Tab8 setlocal shiftwidth=8 tabstop=8 softtabstop=8
