testFiles="""
  bashful_test.sh
  parse-args_test.sh
  cache_test.sh
  inc_test.sh
  json_test.sh
"""

source ~/.bashful.filesys/bashful.rc
mkdir -p test/results

[ ! -z "$1" ] && [ "$1" != "--update-snapshots" ] && testFiles="$1_test.sh";

testProg () {
  echo "#####################################################################################################"
  echo "#              TESTING     $1"
  echo "#####################################################################################################"
  bash "test/$1"
  echo "#####################################################################################################"
}

for file in $testFiles; do
  echo "#####################################################################################################"
  echo "#              START TESTS FOR     $file"
  echo "#####################################################################################################"
  echo "Running Tests"
  echo "   STDERR will appear here (including Git output)."
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
  echo "#              END OF TESTS FOR     $file"
  echo "#####################################################################################################"
  echo;
  echo;
done

echo -e "\033[1;90mTests complete for: ${testFiles[@]}\033[0m" >&2; # dark grey
echo -e "\033[1;32mAll Tests Passed. Great job, you did not break anything (yet...)\033[0m\n" # bright green
