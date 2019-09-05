source test/_tools.sh

# setup stuff to test cache
mkdir test_tmp
cp -a test/ test_tmp/
cd test_tmp
run ls

run cache snapshots
run ls

run cache parse-args results
run ls

# Fails on diff for "Files for test_tmp were cached on <DATE>" because it was always different - hence sed
run cache --show | sed -e "s/Files for test_tmp were cached on .*/Files for test_tmp were cached on <DATE>/g"
run ls

run cache --restore parse-args results
run ls

run cache --restore
run ls

run cache --show

# clean up
cd - >/dev/null
rm -rf test_tmp 2>/dev/null