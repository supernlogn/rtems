dnl 
dnl Check for target gcc
dnl

AC_DEFUN([RTEMS_PROG_CC],
[
AC_BEFORE([$0], [AC_PROG_CPP])dnl
AC_BEFORE([$0], [AC_PROG_CC])dnl
AC_BEFORE([$0], [RTEMS_CANONICALIZE_TOOLS])dnl

case "$host" in
*-*-rtems*) ac_cv_exeext=.exe;;
esac

RTEMS_CHECK_TOOL(CC,gcc)
test -z "$CC" && \
  AC_MSG_ERROR([no acceptable cc found in \$PATH])
AC_PROG_CC
AC_PROG_CPP
])

AC_DEFUN([RTEMS_PROG_CC_FOR_TARGET],
[
dnl check target cc
RTEMS_PROG_CC

AS_IF([test x"$GCC" = xyes],[
GCCSPECS="-B\$(RTEMS_SOURCE_ROOT)/c/src/lib/libbsp/\$(RTEMS_CPU)/\$(RTEMS_BSP_FAMILY)/startup/"
GCCSPECS="${GCCSPECS} -specs bsp_specs -qrtems"])
AC_SUBST(GCCSPECS)

RTEMS_INCLUDES
RTEMS_BSP_INCLUDES
RTEMS_BSP_LINKCMDS
])
