" --------------------
" vim-plug
" --------------------

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('$DATA/plugged')

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

Plug 'jlanzarotta/bufexplorer'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'cocopon/iceberg.vim'

Plug 'elzr/vim-json', {'for': 'json'}
Plug 'groenewege/vim-less', {'for': 'less'}
Plug 'stephpy/vim-yaml', {'for': 'yaml'}
Plug 'keith/swift.vim', {'for': 'swift'}
Plug 'wavded/vim-stylus', {'for': 'stylus'}
Plug 'StanAngeloff/php.vim', {'for': 'php'}
Plug 'dag/vim-fish', {'for': 'fish'}
Plug 'cespare/vim-toml', {'for': 'toml'}
Plug 'yuezk/vim-js', {'for': ['javascript', 'javascript.jsx']}
Plug 'maxmellon/vim-jsx-pretty', {'for': ['javascript', 'javascript.jsx']}

" Initialize plugin system
call plug#end()

" --------------------
" Plugins setting
" --------------------
" fugitive
cnoreabbrev gopen Gbrowse

" vim-go
let g:go_disable_autoinstall = 1

" vim-json
let g:vim_json_syntax_conceal = 0

" JSX
let g:jsx_ext_required = 0

" localvimrc
let g:localvimrc_ask = 0

" lightline
let g:lightline = {
\   'colorscheme': 'wombat',
\   'active': {
\     'left': [ [ 'mode', 'paste' ],
\               [ 'readonly', 'filename', 'modified' ] ]
\   },
\ }

" vim-lsp
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}

" fern.vim
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>
let g:fern#renderer = 'nerdfont'

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
