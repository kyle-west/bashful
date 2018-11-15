__bash_suite_program_dir=~/.bashful

echo Removing $__bash_suite_program_dir
rm -rf $__bash_suite_program_dir 2>/dev/null;

import_path_line='export PATH="${PATH}:$(echo ~/.bashful)"'
edited_profile=$(cat ~/.bash_profile | sed -e "s#$import_path_line##g")

echo -e "$edited_profile" > ~/.bash_profile

# zsh users
edited_profile=$(cat ~/.zshrc | sed -e "s#$import_path_line##g")
echo -e "$edited_profile" > ~/.zshrc;

echo Done
echo;

# prompt the user to restart terminal
echo;
echo BASHful Suite by kyle-west
echo Uninstall Complete
echo    !!! Please restart your terminal to allow the changes to take effect !!!
echo;