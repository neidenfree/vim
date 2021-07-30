# vim

This is my VIM config and UltiSnips snippets for various programming languages. Here's what to do to use this stuff.
At first, you need to init a git repo in your home ~ directory. Then, add your .vimrc to your repo (if it exists). Ok, move on.

You need to install vim-plug: 
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
    
and Vundle:
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Then, to make sure that FZF is working, you need to install FZF itself. 
`sudo port install fzf`
`sudo apt install fzf`

Also `Ag` is pretty much useful stuff, so you might want to install it. 
For OS X :
`sudo port install the_silver_searcher`

For UltiSnips to work you want to make sure that you have VIM with python3 support. You can view that with a `vim --version` command. And yes, on OS X it can be such a pain in the ass. Don't forget to open a new terminal session!
