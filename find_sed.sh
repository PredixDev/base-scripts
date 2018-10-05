#!/bin/bash

function __find_n_sed() {
  if test `uname` = 'Darwin'; then
    find . -type f -not -iwholename "*/.git/*" -not -iwholename "./scripts/release.sh" -exec sed -i '' -e $1 {} \;
  else
    find . -type f -not -iwholename "*/.git/*" -not -iwholename "./scripts/release.sh" -exec sed -i -e $1 {} \;
  fi
}
