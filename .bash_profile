# Run the `.bashrc` file, which is essentially a shell script
# The `source` command causes anything inside the provided file to be read and run
# source .bashrc
if [ -f "$HOME/.bashrc" ]; then
  source $HOME/.bashrc
fi


# Load the shell dotfiles:
for file in ~/.{bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file


# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion