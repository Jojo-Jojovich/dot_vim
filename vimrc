" =======================================
" Who: Eugene Lee based on Vim of Champions by Jeremy Mack
" What: .vimrc
" Version: 1.0 (this may never change because who versions dot files,
" honestly)

" =======================================

" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

" Navigation
Bundle 'kien/ctrlp.vim'
Bundle 'mbbill/undotree'
Bundle 'bufexplorer.zip'

" UI Additions
Bundle 'scrooloose/nerdtree'
Bundle 'taglist.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/buftabs'
Bundle 'tpope/vim-repeat'
Bundle 'kien/rainbow_parentheses.vim'

" Color Schemes
Bundle 'Jojo-Jojovich/all-colors-pack'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'nanotech/jellybeans.vim'
Bundle 'twilight'
Bundle 'sjl/badwolf'

" Commands
Bundle 'tpope/vim-surround'
if executable('ack-grep')
	let g:ackprg="ack-grep -H --nocolor --nogroup --column"
	Bundle 'mileszs/ack.vim'
elseif executable('ack')
  Bundle 'mileszs/ack.vim'
endif
Bundle 'mattn/zencoding-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'godlygeek/tabular'

" Automatic Helpers
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
Bundle 'scrooloose/syntastic'

" Snippets & AutoComplete
Bundle 'Jojo-Jojovich/neocomplcache'
Bundle "garbas/vim-snipmate"
Bundle 'honza/vim-snippets'

" Language Additions
" PHP
Bundle 'jcugno/PIV'
Bundle 'shawncplus/phpcomplete.vim'

" Javascript
Bundle 'pangloss/vim-javascript'
Bundle 'leshill/vim-json'

" HTML
" "Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'docunext/closetag.vim'

" General
Bundle 'scrooloose/nerdcommenter'
if executable('ctags')
	Bundle 'majutsushi/tagbar'
	if executable('phpctags')
		Bundle 'techlivezheng/tagbar-phpctags' 
	endif
endif
Bundle 'tpope/vim-markdown'
Bundle 'spf13/vim-preview'

" Debugging
Bundle 'DBGp-Remote-Debugger-Interface'

" Retired but may be useful in the future
" Bundle 'L9'
" Bundle 'tpope/vim-fugitive'
" Bundle 'godlygeek/csapprox'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'mutewinter/LustyJuggler'
" Bundle 'gregsexton/MatchTag'
" Bundle 'FuzzyFinder'
" Bundle 'ervandew/supertab'

filetype plugin indent on  " Automatically detect file types. (must turn on after Vundle)

" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=","

" ----------------------------------------
" Platform Specific Configuration
" ----------------------------------------

set nocursorline

if has('win32') || has('win64')
  " Windows
  source $VIMRUNTIME/mswin.vim
  set guifont=Consolas:h10:cANSI
  set guioptions-=T " Toolbar
  set guioptions-=m " Menubar

  " Set height and width on Windows
  set lines=60
  set columns=120
	
	set cursorline

  " Windows has a nasty habit of launching gVim in the wrong working directory
  cd ~
elseif has('gui_macvim')
  " MacVim
	set cursorline
  " set guifont=Menlo\ Regular:h12
  set guifont=Bitstream\ Vera\ Sans\ Mono:h12
	" Hide Toolbar in MacVim
  if has("gui_running")
    set guioptions=egmrt
  endif
endif

" ----------------------------------------
" Regular Vim Configuartion (No Plugins Needed)
" ----------------------------------------

" ---------------
" Color
" ---------------
set background=dark
set t_Co=256 " Ensure we have full spectrum of colors
set colorcolumn=80

" Conditionally Set colorscheme
if has('unix') && !has('gui_macvim')
  if $TERM == 'xterm-256color'
    " Neato, 256 color terminal. We can use ir_black_mod
    colorscheme badwolf
  else
    set term=xterm
		set t_Co=256
		let g:CSApprox_verbose_level=0
    colorscheme badwolf
  endif
else
  " We're good if not on unix or in MacVim
  colorscheme badwolf
endif

" ---------------
" Backups
" ---------------
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" ---------------
" UI
" ---------------
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set laststatus=2  " Always show the statusline
set cmdheight=2
set relativenumber " I think I like these more still but it may not exist
set linespace=0

" ---------------
" Behaviors
" ---------------
syntax enable
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=1000        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set autowrite          " Writes on make/shell commands
set timeoutlen=500     " Time to wait for a command (after leader for example)
set foldlevelstart=99  " Remove folds
set formatoptions=crql
set nofoldenable
set ofu=syntaxcomplete#Complete


if has ("unix") && "Darwin" != system("echo -n \"$(uname)\"")
	" on Linux use + register for copy-paste
	set clipboard=unnamedplus
else
	" one mac and windows, use * register for copy-paste
	set clipboard=unnamed
endif

" Use viminfo
set viminfo='100,f1,\"1000,:100,/100,h,%

" Remember settings between sessions
set viminfo='400,f1,"500,h,/100,:100,<500

let bash_is_sh=1 " this makes CLI integration better.

" ---------------
" Text Format
" ---------------
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=0
set shiftwidth=2  " Tabs under smart indent
set cindent
set noexpandtab
set backspace=2
set encoding=utf-8

" Added 2005-03-23 Based on http://www.perlmonks.org/index.pl?node_id=441738
:set smarttab
:set shiftround
:set autoindent
:set smartindent

" ---------------
"  Modelines
" ---------------
set modeline
set modelines=4

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase " Non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,.sass-cache

" ---------------
" Visual
" ---------------
set showmatch  " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes
set mousemodel=extend " Allow better terminal/mouse integration

" ---------------
" Scolling
" ---------------
set scrolljump=5
set scrolloff=3

" Better complete options to speed it up
set complete=.,w,b,u,U

" ----------------------------------------
" Bindings
" ----------------------------------------

" Window Movement
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Toggle show tabs and trailing spaces (,c)
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>)

" Fixes common typos
command W w
command Q q

" Indent/unident block (,]) (,[)
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>

" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>)

" Removes doc lookup binding because it's easy to fat finger
nmap K k
vmap K k

" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./=/g\|:nohls<cr>

" Make line completion easier
imap <C-l> <C-x><C-l>

" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" SVN blame for visual selection
vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Add semicolon to the end of the line
inoremap ;; <C-o>A;

" This is for mouse scrolling (primarily in GVIM)
:map <M-Esc>[62~ <MouseDown>
:map! <M-Esc>[62~ <MouseDown>
:map <M-Esc>[63~ <MouseUp>
:map! <M-Esc>[63~ <MouseUp>
:map <M-Esc>[64~ <S-MouseDown>
:map! <M-Esc>[64~ <S-MouseDown>
:map <M-Esc>[65~ <S-MouseUp>
:map! <M-Esc>[65~ <S-MouseUp>

" Turn on "very magic" regex status by default for searches.
" :he /magic for more information
nnoremap / /\v
vnoremap / /\v

" Keybindings for movement in insert mode
imap <Leader>0 <Esc>I
imap <Leader>$ <Esc>A
imap <Leader>h <Esc>i
imap <Leader>l <Esc>lli
imap <Leader>j <Esc>lji
imap <Leader>k <Esc>lki

" Tab options (as in Vim GUI Tabs)
" <C-t> Opens a new tab
" Remember, gt goes to next tab, gT goes to previous; easier than using firefox
" control sequences
:nmap <C-t> :tabnew<CR>
:imap <C-t> <ESC>:tabnew<CR>
" :nmap <s-t> :tabclose<CR>
" :imap <C-> <ESC>:tabclose<CR>

" Map <leader>f to split horizontally, and move to bottom window
nnoremap <Leader>f <C-w>v<C-w>l

" Insert newline
map <leader><Enter> o<ESC>

" Turn off search results if you press the spacebar
nmap <SPACE> <SPACE>:noh<CR>

" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Search and replace word under cursor (,*)
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>

" ---------------
" Leader
" ---------------

" The escape key is a long ways away. This maps it to the sequence 'jj'
:map! jj <esc>

nmap <silent> <leader>ss :set spell!<CR>
nmap <silent> <leader>v :e ~/.vim/vimrc<CR>
nmap <silent> <leader>vv :source ~/.vim/vimrc<CR>

" Window Splitting
nmap <silent> <leader>sh :split<CR>
nmap <silent> <leader>sv :vsplit<CR>

" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" indent_guides
" ---------------
" Before the sp13 changes..
let g:indent_guides_auto_colors=1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=5
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

if has('unix') && !has('gui_macvim') && !has('win32') && !has('win64')
	let g:indent_guides_enable_on_vim_startup=0
	if $TERM == 'xterm-256color'
		" Make the guides smaller since they will be crazy visible in 256color mode
		let g:indent_guides_guide_size=1
	else
		autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#212121   ctermbg=3
		autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#404040 ctermbg=4
		" Turn off the guides when 256color mode isn't available
"     let g:indent_guides_enable_on_vim_startup=0
	endif
endif

"" ---------------
" Rainbow Parenthesis
" ---------------
nnoremap <leader>rp :RainbowParenthesesToggle<CR>

"" ---------------
" UndoTree
" ---------------
nnoremap <Leader>u :UndotreeToggle<CR>

" ---------------
" Zencoding
" ---------------
let g:user_zen_leader_key = "<c-z>"

let g:user_zen_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \}

" ---------------
" Neocachecompl
" ---------------
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
" Tab will select the next element AND we don't highlight that first element 
imap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:neocomplcache_enable_auto_select = 0

" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_auto_jump=0
let g:syntastic_javascript_checker='jshint'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Platform-specific config files
if has('win32') || has('win64')
  let g:syntastic_jsl_conf=$HOME.'/.vim/config/windows/syntastic/jsl.conf'
  let g:syntastic_disabled_filetypes=['sh'] " Disable .sh on Windows
endif

" ---------------
" NERDTree
" ---------------

" Auto open NerdTree if you didn't specifiy a file
" autocmd vimenter * if !argc() | NERDTree | endif

" Lets you close vim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nc :NERDTreeClose<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nn :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
let NERDChristmasTree=1
let NERDTreeCaseSensitiveSort=1
let NERDTreeChDirMode=2
let NERDTreeBookmarksFile = $HOME . "/.NERDTreeBookmarks"
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']

" NERD Commenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let g:NERDCustomDelimiters = { 'racket': { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#' } }

" delimitMate
let delimitMate_autoclose = 0

" ---------------
" Debugger
" ---------------
let g:pathMap = '/mnt:/Users/jcugno/Documents/buzz_sites'

" ---------------
" Buffer explorer 
" ---------------
nmap <leader>b :BufExplorer<CR>
map <S-J> :bnext<CR>
map <S-K> :bprevious<Cr>

" ---------------
" ctrlp
" ---------------
let g:ctrlp_working_path_mode = 2
nnoremap <silent> <leader>t :CtrlP<CR>
nnoremap <silent> <D-r> :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
			\ 'dir':  '\.git$\|\.hg$\|\.svn$\|\node_modules$',
			\ 'file': '\.exe$\|\.so$\|\.dll$' }

let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
" let g:ctrlp_split_window = 1 " <CR> = New Tab
let g:ctrlp_max_height = 25 " Show 25 results

" ---------------
" Tags
" ---------------
:set tags=$HOME/.vim.tags/
" Load a tag file
" Loads a tag file from ~/.vim.tags/, based on the argument provided. The
" command "Ltag"" is mapped to this function.
:function! LoadTags(file)
:   let tagspath = $HOME . "/.vim.tags/" . a:file
:   let tagcommand = 'set tags+=' . tagspath
:   execute tagcommand
:endfunction
:command! -nargs=1 Ltag :call LoadTags("<args>")

" These are tag files I've created; you may want to remove/change these for your
" own usage.
" :call LoadTags("zf1")
" :call LoadTags("buzz_cms")

" Build tags from the current directory
map <F8> :!~/.vim/bin/mkTags

" TagList options

nnoremap <silent> <leader>tl :TlistToggle<CR>

let Tlist_Use_Right_Window = 0
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fild_Auto_Close = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Close_On_Select = 1
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1

" ---------------
" Session
" ---------------
let g:session_autosave=1
let g:session_autoload=1
nnoremap <leader>os :OpenSession<CR>

" ---------------
	" TagBar
	" ---------------
	nnoremap <silent> <leader>tb :TagbarToggle<CR>

	" ---------------
	" Tabular
	" ---------------
	nmap <Leader>t= :Tabularize /=<CR>
	vmap <Leader>t= :Tabularize /=<CR>
	nmap <Leader>t: :Tabularize /:\zs<CR>
	vmap <Leader>t: :Tabularize /:\zs<CR>
	nmap <Leader>t:: :Tabularize /:\zs<CR>
	vmap <Leader>t:: :Tabularize /:\zs<CR>
	nmap <Leader>t, :Tabularize /,\zs<CR>
	vmap <Leader>t, :Tabularize /,\zs<CR>
	nmap <Leader>t> :Tabularize /=>\zs<CR>
	vmap <Leader>t> :Tabularize /=>\zs<CR>
	nmap <Leader>t<Bar> :Tabularize /<Bar><CR>
	vmap <Leader>t<Bar> :Tabularize /<Bar><CR>

" ---------------
" Vundle
" ---------------
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bi! :BundleInstall!<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean<CR>

" ---------------
" snipMate
" ---------------
let g:snips_author = "Eugene Lee"

" ---------------
" AutoCloseTag
" ---------------
" Make it so AutoCloseTag works for xml and xhtml files as well
au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
nmap <Leader>ac <Plug>ToggleAutoCloseMappings


" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" OpenURL
" ---------------

if has('ruby')
ruby << EOF
  require 'open-uri'
  require 'openssl'

  def extract_url(url)
    re = %r{(?i)\b((?:[a-z][\w-]+:(?:/{1,3}|[a-z0-9%])|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]\{\};:'".,<>?«»“”‘’]))}

    url.match(re).to_s
  end

  def open_url
    line = VIM::Buffer.current.line

    if url = extract_url(line)
      if RUBY_PLATFORM.downcase =~ /(win|mingw)(32|64)/
        `start cmd /c chrome #{url}`
        VIM::message("Opened #{url}")
      else
        `open #{url}`
        VIM::message("Opened #{url}")
      end
    else
      VIM::message("No URL found on this line.")
    end

  end

  # Returns the contents of the <title> tag of a given page
  def fetch_title(url)
    if RUBY_VERSION < '1.9'
      open(url).read.match(/<title>(.*?)<\/title>?/i)[1]
    else
      open(url, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read.match(/<title>(.*?)<\/title>?/i)[1]
    end
  end

  # Paste the title and url for the url on the clipboard in markdown format: [Title](url)
  # Note: Clobbers p register
  def paste_url_and_title
    clipboard = VIM::evaluate('@+')
    url = extract_url(clipboard)
    if url and url.strip != ""
      puts "Fetching title"
      title = fetch_title(url)
      VIM::command "let @p = '[#{title}](#{url})'"
      VIM::command 'normal! "pp'
    else
      VIM::message("Clipboard does not contain URL: '#{clipboard[1..10]}'...")
    end
  end
EOF

" Open a URL
if !exists("*OpenURL")
  function! OpenURL()
    :ruby open_url
  endfunction
endif

command! OpenUrl call OpenURL()
nnoremap <leader>o :call OpenURL()<CR>

" ---------------
" Paste link with Title
" ---------------

" Open a URL
if !exists("*PasteURLTitle")
  function! PasteURLTitle()
    :ruby paste_url_and_title
  endfunction
endif

command! PasteURLTitle call PasteURLTitle()
map <leader>pt :PasteURLTitle<CR>

endif " endif has('ruby')

" ---------------
" Fix Trailing White Space
" ---------------
map <leader>ws :%s/\s\+$//e<CR>
command! FixTrailingWhiteSpace :%s/\s\+$//e

" ---------------
" Quick spelling fix (first item in z= list)
" ---------------
function! QuickSpellingFix()
  if &spell
    normal 1z=
  else
    " Enable spelling mode and do the correction
    set spell
    normal 1z=
    set nospell
  endif
endfunction

command! QuickSpellingFix call QuickSpellingFix()
nmap <silent> <leader>z :QuickSpellingFix<CR>

" put all this in your .vimrc or a plugin file. This seems to allow you to set
	" the same tab / space options in a file. Use with caution?
	command! -nargs=* Stab call Stab()
	function! Stab()
		let l:tabstop = 1 * input('set shiftwidth=')

		if l:tabstop > 0
			" do we want expandtab as well?
			let l:expandtab = confirm('set expandtab?', "&Yes\n&No\n&Cancel")
			if l:expandtab == 3
				" abort?
				return
			endif

			let &l:sts = l:tabstop
			let &l:ts = l:tabstop
			let &l:sw = l:tabstop

			if l:expandtab == 1
				setlocal expandtab
			else
				setlocal noexpandtab
			endif
		endif

		" show the selected options
		try
			echohl ModeMsg
			echon 'set tabstop='
			echohl Question
			echon &l:ts
			echohl ModeMsg
			echon ' shiftwidth='
			echohl Question
			echon &l:sw
			echohl ModeMsg
			echon ' sts='
			echohl Question
			echon &l:sts . ' ' . (&l:et ? '  ' : 'no')
			echohl ModeMsg
			echon 'expandtab'
		finally
			echohl None
		endtry
	endfunction

" Languages {

	" PHP syntax settings
	:let php_sql_query=1
	:let php_htmlInStrings=1
	:let php_folding=0
	:let php_parent_error_close=1
	:let php_parent_error_open=1
	:let php_noShortTags=0
	:let g:DisableAutoPHPFolding = 1


	" Run file with Ruby interpreter
	:autocmd FileType ruby noremap <C-M> :w!<CR>:!ruby %<CR>

	" .inc, phpt, phtml, phps files as PHP
	:autocmd BufNewFile,BufRead *.inc set ft=php
	:autocmd BufNewFile,BufRead *.phpt set ft=php
	:autocmd BufNewFile,BufRead *.phtml set ft=php
	:autocmd BufNewFile,BufRead *.phps set ft=php

	" JSON
	au BufRead,BufNewFile *.json set ft=json syntax=javascript

	" Jade
	au BufRead,BufNewFile *.jade set ft=jade syntax=jade

	" ZSH
	au BufRead,BufNewFile .zsh_rc,.functions,.commonrc set ft=zsh

" }

:let g:session_autosave = 'no'
