" give us 256 color schemes! 
set term=screen-256color

" better split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" remap the escape key to 'jk'
inoremap jk <ESC>

" display (relative)line numbers
set number
set relativenumber

" better commenting
let s:comment_map = { 
    \   "c": '\/\/',
    \   "cpp": '\/\/',
    \   "go": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "scala": '\/\/',
    \   "php": '\/\/',
    \   "python": '#',
    \   "ruby": '#',
    \   "sh": '#',
    \   "desktop": '#',
    \   "fstab": '#',
    \   "conf": '#',
    \   "profile": '#',
    \   "bashrc": '#',
    \   "bash_profile": '#',
    \   "mail": '>',
    \   "eml": '>',
    \   "bat": 'REM',
    \   "ahk": ';',
    \   "vim": '"',
    \   "tex": '%',
		\		"zsh": '#',
    \ }

function! ToggleComment()
  if has_key(s:comment_map, &filetype)
    let comment_leader = s:comment_map[&filetype]
    if getline('.') =~ "^\\s*" . comment_leader . " " 
      " Uncomment the line
      execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
    else
      if getline('.') =~ "^\\s*" . comment_leader
        " Uncomment the line
        execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
      else
        " Comment the line
        execute "silent  s/^\\(\\s*\\)/\\1" . comment_leader  . " /"
      end
    end
  else
    echo "No comment leader found for filetype"
  end
endfunction

nnoremap <leader><Space> :call ToggleComment()<cr>
vnoremap <leader><Space> :call ToggleComment()<cr>

" store swapfiles and backup files in a better place.
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" 2 space indentation.
set shiftwidth=2
set autoindent
set tabstop=2
set smartindent

" change the explorer mode list style
let g:netrw_liststyle=3

" solarized colors
syntax enable
set background=dark
" colorscheme solarized
colorscheme gruvbox

"setup vundle
set nocompatible		" required
filetype off			" required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()		" required

" plugins:
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()	 	" required
filetype plugin indent on 	" required

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set backup		" keep a backup file (restore to previous version)
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Switch syntax highlighting on
syntax on

" Always display the status line
set laststatus=2

" Configure airline
let g:airline_powerline_fonts = 1
