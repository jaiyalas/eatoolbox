########################
# Jaiyalas @ MacBook
########################
# Mac OS X 10.6
# 2010/07/28
########################

##### Environment #####

set LC_CTYPE "en_US.UTF-8"

set TERM xterm-256color

set -u CLASSPATH
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

set -x PATH ~/bin
set -x PATH /bin $PATH
set -x PATH /sbin $PATH
set -x PATH /usr/bin $PATH
set -x PATH /usr/lib $PATH
set -x PATH /usr/include $PATH
set -x PATH /usr/sbin $PATH
set -x PATH /usr/X11R6/bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/lib $PATH
set -x PATH /usr/local/include $PATH
set -x PATH ~/.cabal/bin $PATH

function fish_prompt -d 'custom prompt'
  set -x TERM xterm-256color
  prompt.rb
end

set -x CDPATH .
set -x PROMPT_SHELL fish
set -x PROMPT_PATH_ABBR 1

##### Function #####

function rm
  rm-alt $argv
end

function farm
  cd ~/project/iis/code_farm
end

function aq
  open /Applications/Aquamacs.app/ $argv
end

function confish
  vim ~/.config/fish/config.fish
end
