#!/usr/bin/env

errln() {
  echo "\033[31;1m[ERR ]\033[0m $@"
}

logln() {
  echo "\033[32;1m[INFO]\033[0m $@"
}

hlline() {
  [ "$#" -eq 0 ] && n=1 || n="$1"
  cat "-" | sed "$n,$n"' s/^\(.*\)$/'$(printf "\033[32;1m")'\1'$(printf "\033[0m")'/g'
}
