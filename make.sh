#!/usr/bin/env bash
set -euo pipefail

die() {
  local msg="$1"
  printf '%s\n' "${msg}" &>/dev/stderr
  exit
}

build() {
  if [[ "$#" -lt '1' ]]; then
    die "Error[$0]: invalid argc"
  fi
  local infile="$1"
  local outfile='index.html'
  pandoc -s -i \
    -t revealjs \
    --variable theme=white \
    "${infile}" \
    -o "${outfile}"
}

main() {
  if [[ "$#" -lt '1' ]]; then
    die "Error[$0]: invalid argc"
  fi
  local verb="$1"

  case "${verb}" in
    build)
      shift
      build "$@"
      ;;
  esac
}

main "$@"
