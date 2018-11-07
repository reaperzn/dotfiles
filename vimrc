"Clear OS defined options
set nocompatible

" Attempt to determine the type of a file based on name and contents.
" Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin on

"Avoid colorscheme changes overwriting the ExtraWhitespace highlight
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

"Set my preferred colorscheme
colorscheme desert

"Highlight trailing whitespace
set hlsearch
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
"set backspace=indent,eol,start

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

