#!/bin/bash
# Install bash-completion and add to .bashrc
(   sudo apt-get update -qq \
    && sudo apt-get install -qqy bash-completion
{
    echo 'source /etc/bash_completion' ;
    echo 'source /etc/bash_completion.d/git-prompt' ;
} | tee -a /home/vscode/.bashrc)

# Add github.com to known hosts
ssh-keyscan github.com | tee -a /home/vscode/.ssh/known_hosts
