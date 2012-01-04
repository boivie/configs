# set en_US locale w/ utf-8 encodings
LANG="en_US.UTF-8"
LANGUAGE="en"
LC_CTYPE="en_US.UTF-8"
LC_ALL="en_US.UTF-8"
export LANG LANGUAGE LC_CTYPE LC_ALL

# colors
CLICOLOR=1
GREP_OPTIONS='--color=auto'
GREP_COLOR='1;32'
export CLICOLOR GREP_OPTIONS GREP_COLOR

# editor/pager
EDITOR="pico"
PAGER="less -R"
LESSHISTFILE="-"
PS1="\u@\h\w$ "
export EDITOR PAGER LESSHISTFILE PS1

# node.js
NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"
export NODE_PATH
