# andon.vim
Colorscheme for Vim.  
See also: [andon](https://github.com/muratas/andon).

## Installation

Three options for installation: dein.vim, Neobundle or manual.

dein.vim Installation (recommended):  
1. Install the [dein.vim](https://github.com/Shougo/dein.vim).  
2. Add the plugin: `call dein#add('muratas/vim-andon')`.

Neobundle Installation:  
1. Install the [Neobundle](https://github.com/Shougo/neobundle.vim).  
2. Add the bundle: `Neobundle 'muratas/vim-andon'`.

Manual Installation:  
1. Download the andon distribution and unarchive the file.  
2. Move `andon.vim` to your `.vim/colors` directory.

After install, put the following two lines in your `.vimrc`.

    syntax enable
    colorscheme andon

By default, Vim will use the closest matching cterm equivalent of the RGB colours.

However, Due to the limited 256 palette, colours in Vim and gVim will still be noticeably different. In order to get a uniform appearance and the way that this colourscheme was intended, it is HIGHLY recommended that you:

For iTerm2 users:  
Install the color preset `andon.itermcolors`.

     https://github.com/muratas/andon/blob/master/iterm2/andon.itermcolors

For OSX Terminal.app users:  
Install the color preset `andon.terminal`.

     https://github.com/muratas/andon/blob/master/osx-terminal/andon.terminal

## Screenshots

![screenshot](https://github.com/muratas/andon/raw/master/doc/images/screenshot01.png)

## License
This Software is released under the MIT license.

Copyright (c) 2011 Ethan Schoonover  
Copyright (c) 2009-2012 NanoTech  
Copyright (c) 2012 w0ng  
Copyright (c) 2014 Satoshi Murata
