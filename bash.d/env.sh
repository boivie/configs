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

# ec2-api-tools
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
EC2_REGION="eu-west-1"
export EC2_URL="https://${EC2_REGION}.ec2.amazonaws.com/"
export GOPATH=$HOME/r/go
