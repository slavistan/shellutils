#!/usr/bin/env sh

errln() {
  echo "\033[31;1m[ERR ]\033[0m $@"
}

logln() {
  echo "\033[32;1m[INFO]\033[0m $@"
}

# highlight range of lines [n,m] read from stdin
hlln() {
  case "$#" in
    0) n=1; m=1 ;;
    1) n="$1"; m="$1" ;;
    2) n="$1"; m="$2" ;;
  esac
  cat "-" | sed "$n,$m"' s/^\(.*\)$/'$(printf "\033[32;1m")'\1'$(printf "\033[0m")'/g'
}
