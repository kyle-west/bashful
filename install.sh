echo Installing BASHful Suite by kyle-west
echo;

# remove old suites
echo Removing old suites
bash uninstall.sh uninstalled-as-prep-for-install

__bash_suite_program_dir=~/.bashful
__bash_suite_filesys=~/.bashful.filesys

# make the suite directory and add it to PATH
echo Installing $__bash_suite_program_dir to PATH
mkdir $__bash_suite_program_dir
import_path_line='source ~/.bashful.filesys/bashful.rc'
echo $import_path_line >> ~/.bash_profile;
echo $import_path_line >> ~/.zshrc;
echo Done
echo;

# install tools 
echo Copying over programs:
cp ./bin/* "$__bash_suite_program_dir/"
echo -e "\t" `ls $__bash_suite_program_dir`
echo Done
echo;

# install file system for BASHful
mkdir $__bash_suite_filesys
cp -a filesys/* "$__bash_suite_filesys/"

cp -a . "$__bash_suite_filesys/__SELF__"

# prompt the user to restart terminal
echo;
echo BASHful Suite by kyle-west
echo Install Complete
echo    !!! Please restart your terminal to allow the changes to take effect !!!
echo;
