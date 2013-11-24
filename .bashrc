[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM 


# Homebrew - Add `/usr/local/bin` before `/usr/bin` so brew works as expected
PATH=/usr/local/bin:$PATH


# Add mysql to PATH so the `sudo mysqld_safe`, `sudo mysql -u root -p`, and `sudo mysqladmin` work
PATH=$PATH:/usr/local/mysql
PATH=$PATH:/usr/local/mysql/bin


# Add npm to PATH so things like GruntJS work.
PATH=$PATH:/usr/local/share/npm/bin


# Personal shell variables
localhost="$HOME/Documents/localhost" # cd $localhost
desktop="$HOME/Desktop" # cd $desktop


# Shortcuts
alias lhost="cd $localhost"
alias desk="cd $desktop"


# PHP Composer shortcut
alias composer="php composer.phar"


# MySQl shortcuts
alias mysqlstart="sudo mysqld_safe"
alias mysql="sudo mysql -u root -p"
alias mysqladmin="sudo mysqladmin"


# Postgres shortcuts
alias pgstart="postgres -D /usr/local/var/postgres"
alias pgstop="pg_ctl -D /usr/local/var/postgres -l logfile stop"


# List all and indicate directories
alias lsa="ls -aF"


# List only directories
alias lsd='ls -l ${colorflag} | grep "^d"'


# Open programs
alias chrome='open /Applications/Google\ Chrome.app/'
alias firefox='open /Applications/Firefox.app/'
alias itunes='open /Applications/iTunes.app/'
alias skype='open /Applications/Skype.app/'


# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com" # External IP
alias iplocal="ipconfig getifaddr en1" # Local IP


# Enhanced WHOIS lookups
# Usage: `whois istocode.com`
alias whois="whois -h whois-servers.net"


# Get web server headers
# Usage: `headers istocode.com`
alias headers='curl -I'


# Find out if remote server supports gzip / mod_deflate or not
# Usage: `gzipheaders istocode.com`
alias gzipheaders='curl -I --compress'


# Show/hide hidden files in Finder
alias finder_show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias finder_hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"


# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'


# Instead of `alias`ing I could extend the CDPATH (* where the `cd` command looks for directories)
# Usage: `cd any-directory`
CDPATH=$CDPATH:$HOME/Documents/localhost


# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin