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
  echo "Running Tests"
  echo "   STDERR will appear here (including Git output). STDOUT is stored to a file: test/results/$file.output"
  echo "   STDOUT is stored to a file: test/results/$file.output"
  echo;
  npm install >/dev/null
  testProg $file > "test/results/$file.output" 2> >(while read line; do
    if [[ $line == *"Cloning into"* ]]; then
      echo -e "\033[1;90m$line\033[0m" >&2; # dark grey
    else
      echo -e "\033[1;31m$line\033[0m" >&2; # red
    fi
  done)
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
  [ $? -eq 0 ] || exit 1
  echo "#####################################################################################################"
done