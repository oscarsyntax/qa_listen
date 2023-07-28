#!/usr/bin/env bash
set -euo pipefail

die() {
  local msg="$1"
  printf '%s\n' "${msg}" &>/dev/stderr
  exit
}

build() {
  local infile='qa.md'
  local outfile='index.html'
  pandoc \
    -s \
    -i \
    -t revealjs \
    --variable theme=white \
    "${infile}" \
    -o "${outfile}"
}

serve() {
  python -m http.server
}

main() {
  if [[ "$#" -lt '1' ]]; then
    die "Error[$0]: invalid argc"
  fi
  local verb="$1"
  shift
  case "${verb}" in
    build) build "$@" ;;
    serve) serve "$@" ;;
  esac
}

main "$@"
