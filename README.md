# The Vim Configuration of Champions

[![Watchers](http://gitego.com/mutewinter/dot_vim/watchers.png)![Forks](http://gitego.com/mutewinter/dot_vim/forks.png)![Size](http://gitego.com/mutewinter/dot_vim/size.png)](http://gitego.com/mutewinter/dot_vim)

## Installation

1. `git clone https://github.com/Jojo-Jojovich/dot_vim.git` in your home folder.
2. `rm -f .vim`
3. `mv dot_vim .vim`
4. `rm -rf .vimrc`
5. `ln -s ~/.vim/vimrc .vimrc`
6. `cd .vim`
7. Install [Vundle](https://github.com/gmarik/vundle) with `git clone http://github.com/gmarik/vundle.git bundle/vundle`
8. Run `vim +BundleInstall +qall` to install the plugins with Vundle.
9. Enjoy enhanced productivity, increased levitation, reduced watermelon-related accidents, and startling sex appeal.

## Screenshots


**MacVim**

[![MacVim](https://github.com/mutewinter/dot_vim/raw/master/screenshots/MacVim1_small.png)](https://github.com/mutewinter/dot_vim/raw/master/screenshots/MacVim1.png)


**Windows gVim**

[![Windows gVim](https://github.com/mutewinter/dot_vim/raw/master/screenshots/Windows1_small.png)](https://github.com/mutewinter/dot_vim/raw/master/screenshots/Windows1.png)


## Requirements

**Mac**

 * [MacVim](http://code.google.com/p/macvim/) - I'm currently using [snapshot 62](https://github.com/b4winckler/macvim/downloads)

**Windows**

 * [gVim](http://www.vim.org/download.php#pc) - I'm currently using [Wu Yongwei's](http://wyw.dcweb.cn) pre-compiled [gVim 7.3.333](http://wyw.dcweb.cn/download.asp?path=vim&file=gvim73.zip) because it has Ruby support and the latest patches

## Notes

Be sure to always edit the vimrc using `,v`, which opens the vimrc in the .vim folder. Vim has a nasty habit of overriding symlinks.

## Plugin Installation / Requirements

I may make this more verbose later, but for now, here's a list of plugins that require further installation:

 * [Command-T](https://github.com/wincent/Command-T) Needs compilation
 * [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be installed
 * [syntastic](https://github.com/scrooloose/syntastic) Requires many different binaries installed depending on what filetypes you want it to check
 * [ack.vim](https://github.com/mileszs/ack.vim) Requires [ack](http://betterthangrep.com/) to be installed

## Plugin List

_Note: Auto generated by `rake plugins:update_readme`_


 * [vundle](https://github.com/gmarik/vundle) - Vundle, the plug-in manager for Vim
 * [FuzzyFinder](https://github.com/vim-scripts/FuzzyFinder) - buffer/file/command/tag/etc explorer with fuzzy matching
 * [ZoomWin](https://github.com/vim-scripts/ZoomWin) - Zoom in/out  of windows (toggle between one window and multi-window)
 * [Command-T](https://github.com/wincent/Command-T) - Mirror of the official Command-T repository at git.wincent.com
 * [vim-space](https://github.com/spiiph/vim-space) - space.vim - Smart Space key for Vim
 * [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) - Vim motions on speed!
 * [LustyJuggler](https://github.com/mutewinter/LustyJuggler) - Switch very quickly between your active buffers
 * [Gundo](https://github.com/vim-scripts/Gundo) - Visualize your undo tree.
 * [status.vim](https://github.com/dickeytk/status.vim) - Better status bar
 * [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
 * [ir_black_mod](https://github.com/mutewinter/ir_black_mod) - Updated ir_black_mod with some extra colors for my custom vim config
 * [csapprox](https://github.com/godlygeek/csapprox) - Make gvim-only colorschemes work transparently in terminal vim
 * [ColorV](https://github.com/Rykka/ColorV) - A color tool in Vim
 * [taglist.vim](https://github.com/vim-scripts/taglist.vim) - Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
 * [all-colors-pack](https://github.com/jcugno/all-colors-pack) - all colors pack 1.0 There are 223 of them included
 * [browser-refresh.vim](https://github.com/mkitt/browser-refresh.vim) - Refresh current running browser from vim
 * [nerdcommenter](https://github.com/scrooloose/nerdcommenter) - Vim plugin for intensely orgasmic commenting
 * [vim-surround](https://github.com/tpope/vim-surround) - surround.vim: quoting/parenthesizing made simple
 * [vim-speeddating](https://github.com/tpope/vim-speeddating) - speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more
 * [vim-fugitive](https://github.com/tpope/vim-fugitive) - fugitive.vim: a Git wrapper so awesome, it should be illegal
 * [tabular](https://github.com/godlygeek/tabular) - Vim script for text filtering and alignment
 * [ack.vim](https://github.com/mileszs/ack.vim) - Vim plugin for the Perl module / CLI script 'ack'
 * [vim-session](https://github.com/xolox/vim-session) - Extended session management for Vim (:mksession on steroids)
 * [delimitMate](https://github.com/Raimondi/delimitMate) - Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
 * [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim
 * [supertab](https://github.com/ervandew/supertab) - Perform all your vim insert mode completions with Tab
 * [MatchTag](https://github.com/gregsexton/MatchTag) - MatchParen for HTML tags
 * [neocomplcache](https://github.com/Shougo/neocomplcache) - Ultimate auto-completion system for Vim.
 * [vim-snipmate](https://github.com/garbas/vim-snipmate) - snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim. 
 * [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils) - vim: interpret a file by function and cache file automatically
 * [tlib_vim](https://github.com/tomtom/tlib_vim) - Some utility functions for VIM
 * [snipmate-snippets](https://github.com/vim-scripts/snipmate-snippets) - snippets for snipmate
 * [PIV](https://github.com/jcugno/PIV) - PHP Integration environment for Vim
 * [vim-ruby](https://github.com/vim-ruby/vim-ruby) - Vim/Ruby Configuration Files
 * [cocoa.vim](https://github.com/msanders/cocoa.vim) - Vim plugin for Cocoa/Objective-C development.
 * [vim-haml](https://github.com/tpope/vim-haml) - Vim runtime files for Haml, Sass, and SCSS
 * [vim-javascript](https://github.com/pangloss/vim-javascript) - Vastly improved vim's javascript indentation.
 * [vim-coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support for vim
 * [vim-jquery](https://github.com/itspriddle/vim-jquery) - Fork of bronson's vim-jquery which is now gone
 * [vim-rails](https://github.com/tpope/vim-rails) - rails.vim: Ruby on Rails power tools
 * [taskpaper.vim](https://github.com/mutewinter/taskpaper.vim) - This package contains a syntax file and a file-type plugin for the simple format used by the TaskPaper application. 
 * [vim-json](https://github.com/leshill/vim-json) - Pathogen friendly packaging of vim-json from Jeroen Ruigrok van der Werven http://www.vim.org/scripts/script.php?script_id=1945
 * [L9](https://github.com/vim-scripts/L9) - Vim-script library
 * [vim-repeat](https://github.com/tpope/vim-repeat) - repeat.vim: enable repeating supported plugin maps with "."
 * [DBGp-Remote-Debugger-Interface](https://github.com/vim-scripts/DBGp-Remote-Debugger-Interface) - Debugging interface/client for DBGp protocol
