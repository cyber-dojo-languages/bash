#!/bin/bash -Eeu

trimmed()
{
  local -r s1=$1
  local -r s2="${s1##*( )}" # trim leading ws
  local -r s3="${s2%%*( )}" # trim trailing ws
  printf "${s3}"
}

readonly MY_DIR="$( cd "$( dirname "${0}" )" && pwd )"
readonly EXPECTED=$(trimmed "$(cat ${MY_DIR}/version.txt)")
readonly ACTUAL=$(docker run --rm -it cyberdojofoundation/bash sh -c 'bash --version')

if echo "${ACTUAL}" | grep -q "${EXPECTED}"; then
  echo "VERSION CONFIRMED as ${EXPECTED}"
else
  echo "VERSION EXPECTED: ${EXPECTED}"
  echo "VERSION   ACTUAL: ${ACTUAL}"
  exit 1
fi
