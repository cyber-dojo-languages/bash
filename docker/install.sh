#!/bin/sh -eu

# Records the Bash this image holds, in the shape every image shares. The
# installed shell is asked, so the version is one the image can run rather
# than one written down when someone last edited this file.
readonly LANGUAGE_VERSION=$(bash -c 'echo ${BASH_VERSINFO[0]}.${BASH_VERSINFO[1]}.${BASH_VERSINFO[2]}')

if [ -z "${LANGUAGE_VERSION}" ]; then
  echo 'Could not read a version from BASH_VERSINFO' >&2
  exit 1
fi

cat > /versions.json <<EOF
{
  "language": {
    "name": "Bash",
    "version": "${LANGUAGE_VERSION}"
  },
  "test_frameworks": []
}
EOF
