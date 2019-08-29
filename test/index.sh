testFiles="""
  bashful_test.sh
"""

testProg () {
  echo "#####################################################################################################"
  echo "#              TESTING     $1"
  echo "#####################################################################################################"
  bash "test/$1"
  echo "#####################################################################################################"
}

for file in $testFiles; do
  echo "#####################################################################################################"
  echo "#              TESTING     $1"
  echo "#####################################################################################################"
  echo "Running Tests. Errors will appear here, but stdout is stored to a file: test/results/$file.output"
  echo;
  npm install >/dev/null
  testProg $file > "test/results/$file.output"
  echo;
  echo "-----------------------------------------------------"
  echo;
  if [ "$1" == "--update-snapshots" ]; then
    echo "updating snapshot for $file..."
    cp "test/results/$file.output" "test/snapshots/$file.snapshot"
    echo "-----------------------------------------------------"
    echo;
  fi
  echo '>>> diff' "test/snapshots/$file.snapshot" "test/results/$file.output"
  echo;
  diff -u "test/snapshots/$file.snapshot" "test/results/$file.output"
  echo "#####################################################################################################"
done