execute pathogen#infect()

let OSTYPE = system('uname')
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
" 下のバーにカーソルの位置表示
set ruler

" mac mojaveでvimでBSがきかないけんの対策
set backspace=indent,eol,start

" 見た目系
syntax enable
" solarized用の設定
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
if OSTYPE == "Darwin\n"
    "solarized用の設定
    set background=dark
    let g:solarized_termcolors=256
    " let g:solarized_termtrans=1
    "colorscheme solarized
    colorscheme badwolf
else
    colorscheme molokai
endif


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
set tabstop=4 "ファイル上のタブ文字を見た目上何も自分にするか
set shiftwidth=4 "自動インデントのときのスペース量
set softtabstop=4 "tabキーを押したときに挿入されるスペース量
set autoindent
set smartindent
set expandtab "タブをスペースにする
set list "不可視文字を表示する
set listchars=tab:»- "タブの可視化
"set listchars=trail:. "行末半角スペースの可視化
" 不可視文字の内，tabとtrailのハイライトは以下の色になる
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

" indentLineの設定
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#708090'
let g:indentLine_char = '¦'
