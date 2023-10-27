"Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rhysd/vim-clang-format', {'for' : ['c', 'cpp']}
Plug 'morhetz/gruvbox'

let g:clang_format#command = 'clang-format'
let g:clang_format#code_style='llvm'
let g:clang_format#style_options = {
	            \ 'IndentWidth' : '2',
            \ 'UseTab' : 'Always',
            \ 'BreakBeforeBraces' : 'Linux',
            \ 'AllowShortIfStatementsOnASingleLine': 'false',
	    \ 'AllowShortBlocksOnASingleLine': 'false',
	    \ 'AllowShortCaseLabelsOnASingleLine': 'false',
	    \ 'AllowShortFunctionsOnASingleLine': 'None',
	    \ 'AllowShortLoopsOnASingleLine': 'false',
            \ 'IndentCaseLabels' : 'false'}
let g:clang_library_path='/usr/lib/llvm-14/lib/libclang-14.so.1'
colorscheme gruvbox
set background=dark
set tags=./tags,tags;$HOME
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
