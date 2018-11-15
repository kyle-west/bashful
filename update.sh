echo Updating BASHful Suite by kyle-west
echo;

echo Collecting changes
git pull || exit 1
echo Done
echo;

# install tools 
echo Installing programs:
cp ./bin/* "$__bash_suite_program_dir/"
chmod u+x "$__bash_suite_program_dir/*" # make tools executable 
ls $__bash_suite_program_dir
echo Done
echo;

# prompt the user to restart terminal
echo;
echo BASHful Suite by kyle-west
echo Update Complete
echo;