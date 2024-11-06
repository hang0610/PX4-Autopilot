#!/bin/bash

# output version
bash .ci/printinfo.sh

make clean > /dev/null

echo "checking..."
./helper.pl --check-all || exit 1

exit 0

# ref:         HEAD -> master
# git commit:  98f09d8484871ed8483ce70569f79b68b7bff62b
# commit time: 2023-05-11 17:09:51 +0800
