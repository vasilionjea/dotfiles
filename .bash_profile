# Run the `.bashrc` file, which is essentially a shell script
# The `source` command causes anything inside the provided file to be read and run
# source .bashrc
if [ -f "$HOME/.bashrc" ]; then
  source $HOME/.bashrc
fi