execute pathogen#infect()
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

" 見た目系
syntax enable
" solarized用の設定
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
" ここまで
colorscheme solarized


set number
set cursorline
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set matchtime=1
set laststatus=2
set wildmode=list:longest

" tab系
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set expandtab
set list listchars=tab:\-\-
hi SpecialKey guibg=NONE guifg=Gray40

" 検索系
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" キーマップ系
nmap <Esc><Esc> :nohlsearch<CR><Esc>
noremap + <C-a>
noremap - <C-x>
noremap <C-e> $
noremap <C-a> ^

" 補完機能
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap " . k . " " . k . "<C-N><C-P>"
endfor

imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

" indentLine
let g:indentLine_color_term = 111
let g:indentLine_char = '¦'

