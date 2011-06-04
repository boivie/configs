#!/bin/bash

DIR=$(pwd)

# Add proper links to dotfiles
cd $DIR/dotfiles/
for i in *
do
    ln -s $DIR/dotfiles/$i ~/.$i
done

# Add link to ~/bin/
ln -s $DIR/bin/ ~/bin

# add git commit-msg hook to local git
ln -s $DIR/bin/commit-msg $DIR/.git/hooks/

#echo "git push" > $DIR/.git/hooks/post-commit
#chmod 755 $DIR/.git/hooks/post-commit

