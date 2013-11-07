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

# Personal aliases
alias lhost="cd $localhost"
alias desk="cd $desktop"
alias composer="php composer.phar"

# MySQl aliases
alias mysqlstart="sudo mysqld_safe"
alias mysql="sudo mysql -u root -p"
alias mysqladmin="sudo mysqladmin"

# Postgres aliases
alias pgstart="postgres -D /usr/local/var/postgres"
alias pgstop="pg_ctl -D /usr/local/var/postgres -l logfile stop"

# Instead of `alias`es I could extend the CDPATH (* where the `cd` command looks for directories)
# This allows us to still use the `cd` command - in the alias you put the cd as part of the variable's value
CDPATH=$CDPATH:$HOME/Documents/localhost # `cd any-directory` now works!

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin
