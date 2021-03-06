" map leader key

" nnoremap <SPACE> <Nop>
" let mapleader = "\<SPACE>"

"" vim-plug
call plug#begin('~/.vim/plugged')

" info line at the bottom
Plug 'vim-airline/vim-airline'

" code snippets, for short life
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" format tools 2018-07-17
Plug 'Chiel92/vim-autoformat'

" nerdtree
Plug 'scrooloose/nerdtree'

" don't know yet
Plug 'junegunn/vim-easy-align'

" better commentary
Plug 'scrooloose/nerdcommenter'
" https://github.com/scrooloose/nerdcommenter

" Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file that is managed by a version control system (VCS).
Plug 'mhinz/vim-signify'

" as the name
Plug 'terryma/vim-multiple-cursors'

" surrounding 
Plug 'tpope/vim-surround'

" Hyperfocus-writing in Vim.
Plug 'junegunn/limelight.vim'

" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'

" Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ } 

" (Optional) Multi-entry selection UI.
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

" vim-lsp
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete.vim'

Plug 'jez/vim-better-sml'

" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

Plug 'benmills/vimux'
Plug 'w0rp/ale'

Plug 'rust-lang/rust.vim'

call plug#end()

" [end]



let g:airline_powerline_fonts = 1
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<c-j>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" A (not so) minimal vimrc.
"

" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

set nu
colorscheme solarized
set background=dark

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =2 " Make backspace work as you would expect.

set hidden                 " Switch between buffers without having to save first.

"set laststatus  =2         " Always show statusline.
"As I use Air Line, I disabled this --FKY

"set display     =lastline  " Show as much as possible of the last line.
"Don't know what's that mean --FKY

set showmode               " Show current mode in command-line.

"set showcmd                " Show already typed keys when more are expected.
" conflict with snippet

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.
set mouse+=a
set clipboard+=unnamed
"set list                   " Show non-printable characters.
"if has('multi_byte') && &encoding ==# 'utf-8'
"  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
"else
"  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
"endif


" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

noremap <c-i> :Autoformat<CR>

" nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" mutiple cursor custom config

" Default mapping
" let g:multi_cursor_next_key='<C-m>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'


" [start] asyncomplete
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
" [end] asyncomplete


"" auto completion of braket
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"inoremap < <><LEFT>
"
"function! RemovePairs()
"    let s:line = getline(".")
"    let s:previous_char = s:line[col(".")-1]
"
"    if index(["(","[","{"],s:previous_char) != -1
"        let l:original_pos = getpos(".")
"        execute "normal %"
"        let l:new_pos = getpos(".")
"        " only right (
"        if l:original_pos == l:new_pos
"            execute "normal! a\<BS>"
"            return
"        end
"
"        let l:line2 = getline(".")
"        if len(l:line2) == col(".")
"            execute "normal! v%xa"
"        else
"            execute "normal! v%xi"
"        end
"    else
"        execute "normal! a\<BS>"
"    end
"endfunction
"
"function! RemoveNextDoubleChar(char)
"    let l:line = getline(".")
"    let l:next_char = l:line[col(".")]
"
"    if a:char == l:next_char
"        execute "normal! l"
"    else
"        execute "normal! i" . a:char . ""
"    end
"endfunction
"
"inoremap <BS> <ESC>:call RemovePairs()<CR>a
"inoremap ) <ESC>:call RemoveNextDoubleChar(')')<CR>a
"inoremap ] <ESC>:call RemoveNextDoubleChar(']')<CR>a
"inoremap } <ESC>:call RemoveNextDoubleChar('}')<CR>a
"inoremap > <ESC>:call RemoveNextDoubleChar('>')<CR>a

" [start] YCM
" let g:ycm_global_ycm_extra_conf = '~/.config/vim/.ycm_extra_conf.py' 
" let g:ycm_key_invoke_completion = '<c-space>'
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" [end] YCM


" make vim normally display in tmux
if exists('$TMUX')
    set term=xterm-256color
endif

" fix the cursor behaivor in tmux
" Changing cursor shape per mode
" 1 or 0 -> blinking block
" 2 -> solid block
" 3 -> blinking underscore
" 4 -> solid underscore
if exists('$TMUX')
    " tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
    let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[1 q\<Esc>\\"
    let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
    autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
else
    let &t_SI .= "\<Esc>[1 q"
    let &t_EI .= "\<Esc>[2 q"
    autocmd VimLeave * silent !echo -ne "\033[0 q"
endif


" use by junegunn/limelight , must need
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'DarkGray'


" =================LSP====below=================
" python-ls
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

" bash-ls

if executable('bash-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'bash-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
        \ 'whitelist': ['sh'],
        \ })
endif


" deleting the setting of Vimux and vim-sml
" you can added for some reason


:imap jk <Esc>


