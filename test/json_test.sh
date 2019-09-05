source test/_tools.sh

# setup stuff to test cache
mkdir test_tmp
echo '{
  "name": "test",
  "version": "1.2.3",
  "description": "See if the json program works well",
  "list": [
    "item1",
    "item2",
    "item3",
    "item4"
  ]
}' > test_tmp/package.json

cd test_tmp

# run tests
run json package.json
run json package.json '$'
run json package.json '$.description'

# Had issues with 'run' and the exec string, so just style it here
div ___
echo "RUNNING > 'json package.json '$.list.map(x=>\`\${$.name}_\${x.toUpperCase()}\`)''"
div ..
json package.json '$.list.map(x=>`${$.name}_${x.toUpperCase()}`)'
div ..
div ___


# clean up
cd - >/dev/null
rm -rf test_tmp 2>/dev/null