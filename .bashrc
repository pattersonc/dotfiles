export EDITOR='vim -f'
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias acpcode="cd $HOME/acp"
alias sshhome='AUTOSSH_POLL=10 autossh -f -M 0 pattersonc.no-ip.org -N'
alias chromesocks='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome  --proxy-server="socks5://localhost:1081"'

function ec2ssh () { ssh -i $HOME/.ssh/test-ec2-keypair.pem ubuntu@"$@" ;}

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
. `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

stty -ixon -ixoff

source $HOME/.bash/.bash_prompt
