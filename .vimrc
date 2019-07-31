set nocompatible
set nu
set laststatus=2
set ruler
set nowrap
set incsearch
set ignorecase
set wildmenu
"For Coding-----------------------------------------------------------
filetype indent on
set cindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set showmatch
set nobackup
set noundofile
"set mouse=a
set hlsearch
"set fileencodings=utf-8,cp936
"set fileencoding=utf-8
set splitbelow
set splitright

"vim-plug scripts----------------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')
Plug 'skywind3000/asyncrun.vim'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'junegunn/vim-easy-align'
"Plug 'SirVer/ultisnips'
"Plug 'fholgado/minibufexpl.vim'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/LeaderF'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
"Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
"some colorschemes
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/phd'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'romainl/flattened'
Plug 'iCyMind/NeoSolarized'
Plug 'mhartington/oceanic-next'
Plug 'nanotech/jellybeans.vim'
Plug 'mbbill/desertEx'
Plug 'NLKNguyen/papercolor-theme'
Plug 'endel/vim-github-colorscheme'
Plug 'lifepillar/vim-solarized8'
Plug 'joshdick/onedark.vim'

Plug 'myusuf3/numbers.vim'

"for programming language
Plug 'sheerun/vim-polyglot'

"for golang
"Plug 'nsf/gocode'
Plug 'sebdah/vim-delve'
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

"code completion
"Plug 'maralla/completor.vim'
Plug 'Shougo/deoplete.nvim',{'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-clang'
"Plug 'zchee/deoplete-go', {'do': 'make'}
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }
Plug 'zchee/deoplete-jedi'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'


Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'gabrielelana/vim-markdown'
call plug#end()
"--------------------------------------------------------------------

"leader key----------------------------------------------------------
let mapleader=" "
let g:mapleader=" "
"--------------------------------------------------------------------

syntax enable
set t_Co=256
"set termguicolors
set background=dark 
"colorscheme molokai
"colorscheme hybrid
"colorscheme phd
"colorscheme gruvbox
"colorscheme flattened_dark
"colorscheme OceanicNext
"colorscheme jellybeans
"colorscheme desert
"colorscheme PaperColor
"colorscheme NeoSolarized
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme github
"colorscheme solarized8
colorscheme onedark

autocmd BufWritePost $MYVIMRC source $MYVIMRC 

"-----------------------------------------------------------------------
"set foldmethod=indent
"set foldmethod=syntax
"set nofoldenable
"-----------------------------------------------------------------------

"FOR PLUGINS------------------------------------------------------------

"vim-airline -----------------------------------------------------------
"let g:airline_theme='molokai'
let g:airline_powerline_fonts=1
let g:airline#extension#tabline#enabled=1
let g:airline#extension#ale#enabled=1
"let g:airline_extensions=['airline-bufferline','vim-bufferline','bufferline']
"-----------------------------------------------------------------------

"completor--------------------------------------------------------------
"let g:completor_python_binary='/usr/bin/python3.6'
"let g:completor_gocode_binary='/home/vimtoy/go/bin/gocode'
"let g:completor_clang_binary='/usr/bin/clang'
"Use Tab to select completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
"let g:completor_set_options=0
"-----------------------------------------------------------------------

"ALE--------------------------------------------------------------------
let g:ale_completion_enabled=0
let g:ale_sign_column_always=1
let g:ale_set_highlights=0
"-----------------------------------------------------------------------

"rainbow----------------------------------------------------------------
let g:rainbow_active=1
"-----------------------------------------------------------------------

"deoplete---------------------------------------------------------------
let g:deoplete#enable_at_startup = 1
"deoplete-clang---------------------------------------------------------
"let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
"let g:deoplete#sources#clang#clang_header='/usr/lib/clang'
"deoplete-go------------------------------------------------------------
let g:deoplete#sources#go#gocode_binary=$GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class=[ 'package', 'func', 'type', 'var', 'const' ]
"-------------------------------------------------------------------------

"MarkdownPreview
let g:mkdp_path_to_chrome = "chromium"
"-----------------------------------------------------------------------

"YCM--------------------------------------------------------------------
"let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
"let g:ycm_complete_in_comments=1
"let g:ycm_confirm_extra_conf=0
"let g:ycm_collect_indentifiers_from_tags_files=1
"let g:ycm_min_num_of_chars_for_completion=1
"let g:ycm_cache_omnifunc=0
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_goto_buffer_command='horizontal-split'

"Use 24-bin (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost 
"$TMUX check and use tmux's 24-bit color support.
"(see <http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.  SEE <http://github.com/joshdick/onedark.vim> FOR MORE INFORMATION !!! 
if (empty($TMUX))
    if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 <http://github.com/neovim/neovim/pull/2198>
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

"Put these lines at the very end of your vimrc file.
"Load all plugins now.
"Plugins need to be adder tu runtimepath before helptags can be generated.
packloadall
"Load all of the helptags now, after plugins have been loaded.
"All messages and errors will be ignored.
silent! helptags ALL
