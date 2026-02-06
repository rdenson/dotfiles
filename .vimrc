" ~~~~~~~~~~~~
" vim config
" ~~~~~~~~~~~~

so ~/.exrc

" don't highlight all search terms, just find them
set nohlsearch

set nocompatible
" status line - Kim Schultz ("Hacking Vim")
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
" set laststatus=2

set syntax=on
set tabstop=2
set shiftwidth=2
set expandtab

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'tag': 'v1.29' }
Plug 'preservim/nerdtree'
"Plug 'sheerun/vim-polyglot'
"Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rhysd/vim-fixjson'
call plug#end()

"if (has("termguicolors"))
"  set termguicolors
"endif

"set background=dark
"syntax on
"if !exists("g:syntax_on")
"  syntax enable
"endif

" --- custom color schemes ---
" https://github.com/rafi/awesome-vim-colorschemes
"   deus: git@github.com:ajmwagar/vim-deus.git
"   oceanic_material: git@github.com:glepnir/oceanic-material.git
"   seoul256: git@github.com:junegunn/seoul256.vim.git
"   sierra: git@github.com:AlessandroYorba/Sierra.git
"   tender: git@github.com:jacoborus/tender.vim.git
" https://github.com/vim-airline/vim-airline
colorscheme tender

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.colnr = '☞ '

"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"set t_Co=256
let g:airline_theme = 'papercolor'
let macvim_skip_colorscheme = 1

" --- FZF settings ---
" enable fzf in vim
"set rtp+=/usr/local/opt/fzf

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
"let g:fzf_colors =
"  \ { 'fg':      ['fg', 'Normal'],
"  \ 'bg':      ['bg', 'Normal'],
"  \ 'hl':      ['fg', 'Comment'],
"  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"  \ 'hl+':     ['fg', 'Statement'],
"  \ 'info':    ['fg', 'PreProc'],
"  \ 'border':  ['fg', 'Ignore'],
"  \ 'prompt':  ['fg', 'Conditional'],
"  \ 'pointer': ['fg', 'Exception'],
"  \ 'marker':  ['fg', 'Keyword'],
"  \ 'spinner': ['fg', 'Label'],
"  \ 'header':  ['fg', 'Comment'] }
" ---

" Go Specific
autocmd BufNewFile,BufRead *.go set expandtab tabstop=2 shiftwidth=2
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_fmt_autosave = 0
let g:go_auto_type_info = 1
let g:go_updatetime = 500
" ---

" fixjson
let g:fixjson_indent_size = 2

