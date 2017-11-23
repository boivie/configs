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

export PATH=$PATH:~/bin

# node.js
NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"
export NODE_PATH
export JAVA_HOME=$(/usr/libexec/java_home)

export GOPATH="$HOME/r/go/"
export PATH=$PATH:$GOPATH/bin

# cntlm proxy
export http_proxy="http://localhost:3128"
export https_proxy="http://localhost:3128"
export ALL_PROXY="http://localhost:3128"
export no_proxy="sonyericsson.net,corpusers.net,10.129,localhost,192.168"
export SBT_OPTS="-Dhttp.proxyHost=localhost -Dhttp.proxyPort=3128 -Dhttps.proxyHost=localhost -Dhttps.proxyPort=3128"

#localhost, 127.0.0.*, 10.*, 192.168.*, *.sonyericsson.net, *.corpusers.net, *.sonymobile.net

