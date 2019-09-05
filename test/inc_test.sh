source test/_tools.sh

# setup stuff to test cache
mkdir test_tmp
echo '{
  "name": "test",
  "version": "1.2.3",
  "description": "See if the inc program works well"
}' > test_tmp/package.json

echo '{
  "name": "test",
  "version": "1.2.3",
  "description": "See if the inc program works well"
}' > test_tmp/bower.json

cd test_tmp

print_versions () {
  echo package.json "-->" `grep version package.json`
  echo bower.json "  -->" `grep version bower.json`
}

# run tests
run inc patch
print_versions

run inc minor
print_versions

run inc major
print_versions

# clean up
cd - >/dev/null
rm -rf test_tmp 2>/dev/null