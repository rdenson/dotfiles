" ~~~~~~~~~~~~
" vim config
" ~~~~~~~~~~~~

so ~/.exrc

" don't highlight all search terms, just find them
set nohlsearch

" status line - Kim Schultz ("Hacking Vim")
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
set laststatus=2

set background=dark
syntax on
" --- custom color schemes ---
" https://github.com/rafi/awesome-vim-colorschemes
"   sierra: git@github.com:AlessandroYorba/Sierra.git
"   oceanic_material: git@github.com:glepnir/oceanic-material.git
"   seoul256: git@github.com:junegunn/seoul256.vim.git
colorscheme sierra

" --- FZF settings ---
" enable fzf in vim
set rtp+=/usr/local/opt/fzf

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
" ---
