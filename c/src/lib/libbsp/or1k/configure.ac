# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([rtems-c-src-lib-libbsp-or1k],[_RTEMS_VERSION],[https://devel.rtems.org/newticket])
AC_CONFIG_SRCDIR([generic_or1k])
RTEMS_TOP(../../../../..)
RTEMS_SOURCE_TOP
RTEMS_BUILD_TOP

RTEMS_CANONICAL_TARGET_CPU
AM_INIT_AUTOMAKE([no-define foreign 1.12.2])
AM_MAINTAINER_MODE

RTEMS_ENV_RTEMSBSP
RTEMS_PROJECT_ROOT

RTEMS_CHECK_BSPDIR([$RTEMS_BSP_FAMILY])

# Explicitly list all Makefiles here
AC_CONFIG_FILES([Makefile])
AC_OUTPUT
