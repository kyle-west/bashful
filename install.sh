echo Installing BASHful Suite by kyle-west
echo;

# remove old suites
echo Removing old suites
bash uninstall.sh

__bash_suite_program_dir=~/.bashful

# make the suite directory and add it to PATH
echo Installing $__bash_suite_program_dir to PATH
mkdir $__bash_suite_program_dir
import_path_line='export PATH="${PATH}:$(echo ~/.bashful)"'
echo $import_path_line >> ~/.bash_profile;
echo Done
echo $PATH
echo;

# install tools 
echo Copying over programs:
cp ./bin/* "$__bash_suite_program_dir/"
chmod u+x "$__bash_suite_program_dir/*" # make tools executable 
ls $__bash_suite_program_dir
echo Done
echo;

# prompt the user to restart terminal
echo;
echo BASHful Suite by kyle-west
echo Install Complete
echo    !!! Please restart your terminal to allow the changes to take effect !!!
echo;
