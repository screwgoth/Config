" My preferred Settings
" Set Smart and Auto Indents
set autoindent
set smartindent
" Set shiftwidth, tabstop
set shiftwidth=4
set tabstop=4
" expandtab is a must for developing. It coverts tabs to spaces
set expandtab
" Some more convinient settings
set ruler
set hls
syntax on
set history=1000
set undolevels=1000

" Vundle Settings
" Repo : https://github.com/gmarik/vundle.git
" Be iMproved
set nocompatible
filetype off    "required by Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
filetype plugin indent on     " required!
" Extra Bundles
Bundle 'itchyny/lightline.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'c9s/perlomni.vim'
" Vundle Settings End

" lightline Settings
" Repo : https://github.com/itchyny/lightline.vim.git
" To make the awesomely cool powerline visible 
set laststatus=2
" lightline Settings end

" syntastic Settings
" Repo : https://github.com/scrooloose/syntastic.git
set statusline+=%#warningmsg#
set statusline+=%{SytasticStatusLineFlag()}
set statusline+=%*
let g:syntastic_check_on_open=1
let g:syntastic_enable_balloons=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_c_checkers=['gcc' , 'make' , 'cppcheck']
let g:syntastic_id_checkers=1
let g:syntastic_c_checkers=['gcc' , 'cppcheck']
let g:syntastic_perl_checkers=['perl' , 'perlcritic']
let g:syntastic_python_checkers=['python' , 'pyflakes']
"Enable below in case you want error line highlighted
highlight SyntasticErrorLine guibg=#6D6968
highlight SyntasticWarningLine guibg=#6D6968
"Syntastic Eerror Symbols
let g:syntastic_error_symbol="E>"
let g:syntastic_warning_symbol="W>"
" syntastic Settings end

" NERDTree Settings 
" Repo : https://github.com/scrooloose/nerdtree.git
" Open vim with NERDTree
"autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" Close NERDTree if the last file is closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Give a Nice look to NERDTree
let NERDChristmasTree = 1
"Show nice arrows instead of  +
scriptencoding utf-8
set encoding=utf-8
let NERDTreeDirArrows = 1
" NERDTree Settings End

" neocComplCache Settings
" Repo : https://github.com/Shougo/neocomplcache.vim.git
let g:acp_enableAtStartup = 0
" Use neocomplCache instead
let g:neocomplcache_enable_at_startup = 1
" Use smartcase
let g:neocomplcache_enable_smart_case = 1
" Set min syntax word length
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Enable heavy features.
" " Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" " Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Define keyword
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" Recommended key-mappings
" <CR>: close pop-up and save indent
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"    return neocomplcache#smart_close_popup() . "\<CR>"
    " For no inserting <CR> key
    " return pumvisible() ? neocomplcache#close_popup() :
"\<CR>"
"endfunction
" <TAB>: completion
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y> neocomplcache#close_popup()
"inoremap <expr><C-e> neocomplcache#close_popup()
" Close popup by <Space>
" inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() :"\<Space>"
" Enable omni completion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"Enable heavy omni completion
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '[^.[:digit:]*\t]\%(\.\|->\)'
let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:]*\t]\%(\.\|->\)\|\h\w*'
" neoComplCache Settings end
