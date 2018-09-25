if filereadable(expand("~/.gvimrc.before"))
    source ~/.gvimrc.before
endif

set guioptions-=m " Removes menubar
set guioptions-=T " Removes Toolbar
set guioptions+=c " Uses console dialogs (instead of popups)
set winaltkeys=no

" Short labels at tabs
set guitablabel=%!expand(\"\%:t\")

" NERDTree Gui settings
let NERDTreeWinSize = 50

if exists('g:GUI_NERDTREE_DEFAULT_PATH') && isdirectory(expand(g:GUI_NERDTREE_DEFAULT_PATH))
    autocmd VimEnter * :execute 'NERDTree ' . g:GUI_NERDTREE_DEFAULT_PATH
endif

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ee :e $MYGVIMRC<CR>
nmap <silent> <leader>er :so $MYGVIMRC<CR>

if has("gui_macvim")
    source ~/.vim/conf/macvim
endif

" Include user's local vim config
if filereadable(expand("~/.gvimrc.after"))
  source ~/.gvimrc.after
endif

