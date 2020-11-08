mikej dotfiles
==============

Repository containing Michael's dotfiles. These are unlikely to be directly
useful as is, but may contain snippets you'd like to incorporate into your
own config.

Install
-------

Clone onto your laptop:

    git clone git://github.com/mikej/dotfiles.git ~/dotfiles

Install [rcm](https://github.com/thoughtbot/rcm):

    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup
