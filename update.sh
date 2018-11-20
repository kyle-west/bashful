echo Updating BASHful Suite by kyle-west
echo;

__bash_suite_program_dir=~/.bashful

if [ "$1" != "--no-pull" ]; then
  echo Collecting changes
  git pull || exit 1
  echo Done
  echo;
fi

# install tools 
echo Installing programs:
cp ./bin/* "$__bash_suite_program_dir/"
chmod a-x "$__bash_suite_program_dir/*" # make tools executable 
chmod u+x "$__bash_suite_program_dir/*" #   only for the user
ls $__bash_suite_program_dir
echo Done
echo;

# prompt the user to restart terminal
echo;
echo BASHful Suite by kyle-west
echo Update Complete
echo;