## vim-andon

Andon is a colorscheme for Vim, inspired by Kyoto.

## Installation

Two options for installation: manual or Neobundle

Manual Installation:  
1. Download the andon distribution and unarchive the file.
2. Move `andon.vim` to your `.vim/colors` directory.

Neobundle Installation (recommended):
1. Install the [Neobundle](https://github.com/Shougo/neobundle.vim).
2. Add the bundle: `Neobundle 'muratas/vim-andon'`.

After install, put the following two lines in your `.vimrc`.

    syntax enable
    colorscheme andon

By default, Vim will use the closest matching cterm equivalent of the RGB
colours.

However, Due to the limited 256 palette, colours in Vim and gVim will still
be noticeably different. In order to get a uniform appearance and the way
that this colourscheme was intended, it is HIGHLY recommended that you:

For iTerm2 users:
Install the color preset `andon.itermcolors`.

     https://github.com/muratas/andon/iterm2/andon.itermcolors

For OSX Terminal.app users:
Install the color preset `andon.terminal`.

     https://github.com/muratas/andon/osx-terminal/andon.terminal

## Screen Shots

## License
This Software is released under the MIT license.

Copyright (c) 2011 Ethan Schoonover  
Copyright (c) 2009-2012 NanoTech  
Copyright (c) 2012 w0ng  
Copyright (c) 2014 Satoshi Murata

Permission is hereby granted, free of charge, to any per‐
son obtaining a copy of this software and associated doc‐
umentation files (the “Software”), to deal in the Soft‐
ware without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distrib‐
ute, sublicense, and/or sell copies of the Software, and
to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice
shall be included in all copies or substantial portions
of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
