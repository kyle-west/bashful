# check.sh --flag1 --flag2 "argument one" arg2 arg3 --another-flag

source ~/.bashful.filesys/utils/parse-args

echo ${args[*]}
echo;
echo ${positional_args[*]}
echo;
echo __flag1 : $__flag1
echo __flag1 = "'$__flag1_VALUE'"
echo;
echo __flag2 : $__flag2
echo __flag2 = "'$__flag2_VALUE'"
echo;
echo __another_flag : $__another_flag
echo __another_flag = "'$__another_flag_VALUE'"