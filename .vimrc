" this is required for pathogen, and pathogen is required for syntastic
set shell=bash
execute pathogen#infect()
" this is the recomended settings for pathogen
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" these are the custom things for syntastic

let g:syntastic_javascript_checkers = ['jshint']
"this lets you do both jshint and jscs maybe
"autocmd FileType javascript let b:syntastic_checkers = findfile('.jscsrc', '.;') != '' ? ['jscs'] : ['jshint']

"this lets you aggregate multiple style checkers
let g:syntastic_aggregate_errors = 1

:syntax on
syntax enable
:set paste
:filetype on


autocmd BufNewFile,BufRead *.json setfiletype json
autocmd BufNewFile,BufRead *.ts setfiletype typscript 

"set background=dark
"colorscheme one
"set t_Co=256
"hi SpellBad ctermfg=093 ctermbg=155 guifg=#8700ff guibg=#afff5f
"hi SpellCap ctermfg=093 ctermbg=155 guifg=#8700ff guibg=#afff5f



"autocmd vimenter * NERDTree              "automatically starts up nerdtree when vim starts up

set number

"function! NumberToggle()
"  if(&relativenumber == 1)
"    set number
"  else
"    set relativenumber
"  endif
"endfunc

":call NumberToggle()

set relativenumber                      " vi is different than vim. never use vi again! 

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4
autocmd Filetype typescript setlocal ts=4 sts=4 sw=4
autocmd Filetype sass setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2

set expandtab

set smarttab

set smartindent

" this is how you do the sensible configuration
" mkdir -p ~/.vim/plugin
" curl https://raw.githubusercontent.com/tpope/vim-sensible/master/plugin/sensible.vim > ~/.vim/plugin/sensible.vim


" go here for info about how to install jshint2
" https://github.com/Shutnik/jshint2.vim
set runtimepath+=~/.vim/bundle/jshint2.vim/

set clipboard=unnamed


"============================================================================

"if exists('g:loaded_syntastic_javascript_jscs_checker')
"    finish
"endif
"let g:loaded_syntastic_javascript_jscs_checker = 1
"
"if !exists('g:syntastic_javascript_jscs_sort')
"    let g:syntastic_javascript_jscs_sort = 1
"endif
"
"let s:save_cpo = &cpo
"set cpo&vim
"
"function! SyntaxCheckers_javascript_jscs_IsAvailable() dict
"    if !executable(self.getExec())
"        return 0
"    endif
"    return syntastic#util#versionIsAtLeast(self.getVersion(), [2, 1])
"endfunction
"
"function! SyntaxCheckers_javascript_jscs_GetLocList() dict
"    let makeprg = self.makeprgBuild({
"        \ 'args_after': '--no-colors --max-errors -1 --reporter json' })
"
"    let errorformat = '%f:%l:%c:%m'
"
"    return SyntasticMake({
"        \ 'makeprg': makeprg,
"        \ 'errorformat': errorformat,
"        \ 'subtype': 'Style',
"        \ 'preprocess': 'jscs',
"        \ 'defaults': {'type': 'E'},
"        \ 'returns': [0, 2] })
"endfunction

"call g:SyntasticRegistry.CreateAndRegisterChecker({
"    \ 'filetype': 'javascript',
"    \ 'name': 'jscs'})
"
"let &cpo = s:save_cpo
"unlet s:save_cpo

