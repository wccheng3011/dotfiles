# Programming Environment Settings (Ubuntu 20.04)


## Vim
* Personal customization for linux system
* For plugin, we use [vim-plug](https://github.com/junegunn/vim-plug)
    * `sudo apt install curl`
    * `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
    * After this, we can install the plugin we need.
* For [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe#linux-64-bit):
    * do `Plug 'Valloric/YouCompleteMe'` in `.vimrc` so you can install it through vim-plug
    * After that, go to `~/.vim/autoload/YouCompleteMe`, do `./install.py --clang-completer`
    * may still ran into issues with supporting C-family YCM, follow this:
        * create `~/.ycm_extra_conf.py`.
        * modifed `~/.vimrc` with `let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'`,`let g:ycm_confirm_extra_conf = 0`
* For Vim, we have YCM, NerdTree, TagBar, PyMode Checking, Lightline.
* For transparency adjustment, use `<C-t>`.


## Tmux
* Follow [Oh My Tmux](https://github.com/gpakosz/.tmux) Settings
* For Changing the personal setup, just modify settings in `.tmux.conf.local`.
