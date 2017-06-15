
# Exports
#
export EDITOR='vim -f'
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin:/usr/sbin:$PATH"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export MAMP_PHP="/Applications/MAMP/bin/php/php5.5.18/bin"
export PATH="$MAMP_PHP:$PATH"
export PATH="$HOME/bin:$PATH"
#export RUBYMINE_HOME="/Applications/RubyMine.app/"
#export RUBYLIB="/Applications/RubyMine.app/rb/testing/patch/bdd:$RUBYLIB"
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'
export JMETER_HOME='/Users/chris/bin/apache-jmeter-2.13'
# Aliases
#
alias acpcode="cd $HOME/acp"
alias sshhome='AUTOSSH_POLL=10 autossh -f -M 0 pattersonc.no-ip.org -N'
alias sshimac='ssh chris-imac.acponline.org'
alias chromesocks='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome  --proxy-server="socks5://localhost:1081"'
alias veh="sudo vim /etc/hosts"
alias vma="vim /Applications/MAMP/conf/"
alias flushcache="sudo killall -HUP mDNSResponder"
alias yflushcache="sudo discoveryutil udnsflushcaches"
alias vsc="vim ~/.ssh/config"
alias xdebugphpstorm='export XDEBUG_CONFIG="idekey=PHPSTORM"'
alias sshcnotunnel='ln -nfs ~/.ssh/config_notunnel ~/.ssh/config'
alias sshcacptunnel='ln -nfs  ~/.ssh/config_acptunnel ~/.ssh/config'
alias sshdmzvarnish='ssh dmz-varnish-prod.acponline.org'
alias drush8='$HOME/.composer/vendor/drush8/vendor/bin/drush'
alias be='bundle exec'


function ec2ssh () { ssh -i $HOME/.ssh/test-ec2-keypair.pem ubuntu@"$@" ;}

# Bash customization
#
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
. `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

stty -ixon -ixoff

source .bash_prompt

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
