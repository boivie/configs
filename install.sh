#!/bin/bash

DIR=$(pwd)

# Add proper links to dotfiles
cd $DIR/dotfiles/
for i in *
do
    if [ -e ~/.$i ]; then
      echo Will not link ~/.$i since it already exists.
    else
      echo "linking $i -> ~/.$i"
      ln -s $DIR/dotfiles/$i ~/.$i
    fi
done

# Add link to ~/bin/
if [ ! -e ~/bin ]; then
    ln -s $DIR/bin/ ~/bin
fi

# add git commit-msg hook to local git
ln -s $DIR/bin/commit-msg $DIR/.git/hooks/

#echo "git push" > $DIR/.git/hooks/post-commit
#chmod 755 $DIR/.git/hooks/post-commit

