# ===========================================================================
#      http://www.nongnu.org/autoconf-archive/ac_cxx_gnucxx_hashmap.html
# ===========================================================================
#
# OBSOLETE MACRO
#
#   Renamed to AX_CXX_GNUCXX_HASHMAP
#
# SYNOPSIS
#
#   AC_CXX_GNUCXX_HASHMAP
#
# DESCRIPTION
#
#   Test for the presence of GCC's hashmap STL extension.
#
# LICENSE
#
#   Copyright (c) 2008 Patrick Mauritz <oxygene@studentenbude.ath.cx>
#
#   Copying and distribution of this file, with or without modification, are
#   permitted in any medium without royalty provided the copyright notice
#   and this notice are preserved.

AC_DEFUN([AC_CXX_GNUCXX_HASHMAP],[
AC_CACHE_CHECK(whether the compiler supports __gnu_cxx::hash_map,
ac_cv_cxx_gnucxx_hashmap,
[AC_LANG_SAVE
 AC_LANG_CPLUSPLUS
 AC_TRY_COMPILE([#include <ext/hash_map>
using __gnu_cxx::hash_map;],
 [],
 ac_cv_cxx_gnucxx_hashmap=yes, ac_cv_cxx_gnucxx_hashmap=no)
 AC_LANG_RESTORE
])
if test "$ac_cv_cxx_gnucxx_hashmap" = yes; then
  AC_DEFINE(HAVE_GNUCXX_HASHMAP,,[define if the compiler supports __gnu_cxx::hash_map])
fi
])