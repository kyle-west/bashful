source ~/.bashful.filesys/bashful.rc

div () {
  echo "$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1$1"
}
run () {
  div ___
  echo "RUNNING > '$@'"
  div ..
  eval $@
  div ..
  div ___
}

xrun () {
  div ___
  echo "SKIPPING > '$@'"
  div ___
}
