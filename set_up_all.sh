BASHRC=~/.bashrc
if grep -q "# Wesley's setup scripts" "$BASHRC"; then
    echo ".bashrc already contains Windows share setup"
else
    DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
    cp $DIR/set_up_windows_share.sh ~/.bash_windows_share
    cat <<EOT >> $BASHRC

# Wesley's setup scripts
if [ -f ~/.bash_ ]; then
    . ~/.bash_windows_share
fi
EOT
fi
