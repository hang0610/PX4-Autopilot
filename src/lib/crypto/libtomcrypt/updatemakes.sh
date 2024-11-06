#!/bin/bash

./helper.pl --update-makefiles || exit 1

makefiles=(makefile makefile_include.mk makefile.shared makefile.unix makefile.mingw makefile.msvc)
vcproj=(libtomcrypt_VS2008.vcproj)

if [ $# -eq 1 ] && [ "$1" == "-c" ]; then
  git add ${makefiles[@]} ${vcproj[@]} doc/Doxyfile && git commit -m 'Update makefiles'
fi

exit 0

# ref:         HEAD -> master
# git commit:  98f09d8484871ed8483ce70569f79b68b7bff62b
# commit time: 2023-05-11 17:09:51 +0800
