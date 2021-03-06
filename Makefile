# Makefile.in generated automatically by automake 1.5 from Makefile.am.

# Copyright 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001
# Free Software Foundation, Inc.
# This Makefile.in is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.



SHELL = /bin/bash

srcdir = .
top_srcdir = .

prefix = /usr/local
exec_prefix = ${prefix}

bindir = ${exec_prefix}/bin
sbindir = ${exec_prefix}/sbin
libexecdir = ${exec_prefix}/libexec
datadir = ${prefix}/share
sysconfdir = ${prefix}/etc
sharedstatedir = ${prefix}/com
localstatedir = ${prefix}/var
libdir = ${exec_prefix}/lib
infodir = ${prefix}/info
mandir = ${prefix}/man
includedir = ${prefix}/include
oldincludedir = /usr/include
pkgdatadir = $(datadir)/autotrace
pkglibdir = $(libdir)/autotrace
pkgincludedir = $(includedir)/autotrace
top_builddir = .

ACLOCAL = ${SHELL} /home/dabeeo/Pictures/autotrace-0.31.1/missing --run aclocal
AUTOCONF = ${SHELL} /home/dabeeo/Pictures/autotrace-0.31.1/missing --run autoconf
AUTOMAKE = ${SHELL} /home/dabeeo/Pictures/autotrace-0.31.1/missing --run automake
AUTOHEADER = ${SHELL} /home/dabeeo/Pictures/autotrace-0.31.1/missing --run autoheader

INSTALL = /usr/bin/install -c
INSTALL_PROGRAM = ${INSTALL}
INSTALL_DATA = ${INSTALL} -m 644
INSTALL_SCRIPT = ${INSTALL}
INSTALL_HEADER = $(INSTALL_DATA)
transform = s,x,x,
NORMAL_INSTALL = :
PRE_INSTALL = :
POST_INSTALL = :
NORMAL_UNINSTALL = :
PRE_UNINSTALL = :
POST_UNINSTALL = :
host_alias = 
host_triplet = x86_64-unknown-linux-gnu
AMTAR = ${SHELL} /home/dabeeo/Pictures/autotrace-0.31.1/missing --run tar
AS = @AS@
AUTOTRACE_VERSION = 0.31.1
AWK = mawk
CC = gcc
CPP = gcc -E
CXX = g++
DEPDIR = .deps
DLLTOOL = @DLLTOOL@
ECHO = echo
EXEEXT = 
INSTALL_STRIP_PROGRAM = ${SHELL} $(install_sh) -c -s
LIBPNG_LDFLAGS = 
LIBPSTOEDIT_CFLAGS = 
LIBPSTOEDIT_LIBS = 
LIBSWF_LDFLAGS = 
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LN_S = ln -s
LT_AGE = 0
LT_CURRENT = 3
LT_REVISION = 0
MAGICK_CFLAGS = 
MAGICK_CONFIG = 
MAGICK_LDFLAGS = 
MAINT = #
OBJDUMP = @OBJDUMP@
OBJEXT = o
PACKAGE = autotrace
PSTOEDIT_CFLAGS = 
PSTOEDIT_CONFIG = no
PSTOEDIT_LIBS = 
RANLIB = ranlib
STRIP = strip
VERSION = 0.31.1
am__include = include
am__quote = 
install_sh = /home/dabeeo/Pictures/autotrace-0.31.1/install-sh

man_MANS = autotrace.1
EXTRA_DIST = $(man_MANS)						\
output-swf.c output-swf.h					\
input-magick.h input-magick.c input-png.c input-png.h		\
output-pstoedit.c output-pstoedit.h				\
autotrace-config.af autotrace-config.in				\
autotrace.dsp autotrace.dsw					\
autotrace.m4 shape_cubic.c.diff README.MING			\
libming.dsw libming.dsp						\
autotrace.sln autotrace.vcproj libming.sln libming.vcproj	\
autotrace.pc.in autotrace.spec.in TODO HACKING FAQ


AUTOMAKE_OPTIONS = foreign no-dependencies

autotraceincludedir = $(includedir)/autotrace
lib_LTLIBRARIES = libautotrace.la
bin_PROGRAMS = autotrace

#input_magick_src = input-magick.h input-magick.c
input_magick_src = 

#input_png_src = input-png.c input-png.h 
input_png_src = 

input_src = input-pnm.c input-pnm.h \
input-bmp.c input-bmp.h \
input-tga.c input-tga.h \
$(input_png_src) \
$(input_magick_src)


#output_swf_src = output-swf.c output-swf.h
output_swf_src = 

#output_pstoedit_src = output-pstoedit.h output-pstoedit.c
output_pstoedit_src = 
output_src = output-eps.c output-eps.h \
output-er.c output-er.h \
output-fig.c  output-fig.h \
output-sk.c output-sk.h \
output-svg.c output-svg.h \
output-p2e.c output-p2e.h \
output-emf.c output-emf.h \
output-dxf.c output-dxf.h \
output-epd.c output-epd.h \
output-pdf.c output-pdf.h \
output-mif.c output-mif.h \
output-cgm.c output-cgm.h \
output-dr2d.c output-dr2d.h \
$(output_swf_src) \
$(output_pstoedit_src)


libautotrace_la_SOURCES = \
                $(input_src) $(output_src)	\
		fit.c				\
		bitmap.c 			\
		spline.c 			\
		curve.c 			\
		epsilon-equal.c 		\
		vector.c 			\
		color.c 			\
		autotrace.c			\
		output.c 			\
		input.c 			\
		pxl-outline.c 			\
		median.c 			\
	        thin-image.c			\
		logreport.c 			\
		filename.c                      \
                xstd.c                          \
                epsilon-equal.h 		\
	        thin-image.h                    \
	        quantize.h                      \
		image-header.h    		\
		fit.h  				\
		bitmap.h 			\
		spline.h 			\
		curve.h 			\
		vector.h 			\
		color.h 			\
		pxl-outline.h                   \
                despeckle.c                     \
                despeckle.h			\
	        exception.c                     \
		strgicmp.c			\
		image-proc.c			\
		image-proc.h


autotraceinclude_HEADERS = \
		types.h 			\
		autotrace.h                     \
		input.h				\
		output.h 			\
		exception.h


libautotrace_la_LDFLAGS = -version-info $(LT_CURRENT):$(LT_REVISION):$(LT_AGE)

#
# noinst_HEADERS: headers shared between lib and bin.
# File not installed and not shared should be in
# libautotrace_a_SOURCES.
noinst_HEADERS = filename.h                     \
		xstd.h                          \
		logreport.h			\
		message.h                       


autotrace_SOURCES = \
		atou.c 				\
		atou.h 				\
		main.c				\
		cmdline.h 			\
		getopt.c 			\
		getopt.h 			\
		getopt1.c			\
		strgicmp.h


INCLUDES = $(MAGICK_CFLAGS) $(LIBPSTOEDIT_CFLAGS)
autotrace_LDADD = \
		libautotrace.la			\
		$(MAGICK_LDFLAGS)		\
		$(LIBPNG_LDFLAGS)		\
		$(LIBSWF_LDFLAGS)		\
		$(LIBPSTOEDIT_LIBS)		\
		-lm


m4datadir = $(datadir)/aclocal
m4data_DATA = autotrace.m4

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = autotrace.pc

bin_SCRIPTS = autotrace-config
BUILT_SOURCES = autotrace-config
subdir = .
ACLOCAL_M4 = $(top_srcdir)/aclocal.m4
mkinstalldirs = $(SHELL) $(top_srcdir)/mkinstalldirs
CONFIG_HEADER = config.h
CONFIG_CLEAN_FILES = autotrace-config autotrace.pc autotrace.spec
LTLIBRARIES = $(lib_LTLIBRARIES)

libautotrace_la_LIBADD =
#am_libautotrace_la_OBJECTS = \
#	input-pnm.lo \
#	input-bmp.lo \
#	input-tga.lo \
#	input-magick.lo \
#	output-eps.lo \
#	output-er.lo \
#	output-fig.lo \
#	output-sk.lo \
#	output-svg.lo \
#	output-p2e.lo \
#	output-emf.lo \
#	output-dxf.lo \
#	output-epd.lo \
#	output-pdf.lo \
#	output-mif.lo \
#	output-cgm.lo \
#	output-dr2d.lo \
#	fit.lo \
#	bitmap.lo \
#	spline.lo \
#	curve.lo \
#	epsilon-equal.lo \
#	vector.lo \
#	color.lo \
#	autotrace.lo \
#	output.lo \
#	input.lo \
#	pxl-outline.lo \
#	median.lo \
#	thin-image.lo \
#	logreport.lo \
#	filename.lo \
#	xstd.lo \
#	despeckle.lo \
#	exception.lo \
#	strgicmp.lo \
#	image-proc.lo
am_libautotrace_la_OBJECTS = \
	input-pnm.lo \
	input-bmp.lo \
	input-tga.lo \
	output-eps.lo \
	output-er.lo \
	output-fig.lo \
	output-sk.lo \
	output-svg.lo \
	output-p2e.lo \
	output-emf.lo \
	output-dxf.lo \
	output-epd.lo \
	output-pdf.lo \
	output-mif.lo \
	output-cgm.lo \
	output-dr2d.lo \
	fit.lo \
	bitmap.lo \
	spline.lo \
	curve.lo \
	epsilon-equal.lo \
	vector.lo \
	color.lo \
	autotrace.lo \
	output.lo \
	input.lo \
	pxl-outline.lo \
	median.lo \
	thin-image.lo \
	logreport.lo \
	filename.lo \
	xstd.lo \
	despeckle.lo \
	exception.lo \
	strgicmp.lo \
	image-proc.lo
##am_libautotrace_la_OBJECTS = \
##	input-pnm.lo \
##	input-bmp.lo \
##	input-tga.lo \
##	input-magick.lo \
##	output-eps.lo \
##	output-er.lo \
##	output-fig.lo \
##	output-sk.lo \
##	output-svg.lo \
##	output-p2e.lo \
##	output-emf.lo \
##	output-dxf.lo \
##	output-epd.lo \
##	output-pdf.lo \
##	output-mif.lo \
##	output-cgm.lo \
##	output-dr2d.lo \
##	output-swf.lo \
##	fit.lo \
##	bitmap.lo \
##	spline.lo \
##	curve.lo \
##	epsilon-equal.lo \
##	vector.lo \
##	color.lo \
##	autotrace.lo \
##	output.lo \
##	input.lo \
##	pxl-outline.lo \
##	median.lo \
##	thin-image.lo \
##	logreport.lo \
##	filename.lo \
##	xstd.lo \
##	despeckle.lo \
##	exception.lo \
##	strgicmp.lo \
##	image-proc.lo
#am_libautotrace_la_OBJECTS = \
#	input-pnm.lo \
#	input-bmp.lo \
#	input-tga.lo \
#	output-eps.lo \
#	output-er.lo \
#	output-fig.lo \
#	output-sk.lo \
#	output-svg.lo \
#	output-p2e.lo \
#	output-emf.lo \
#	output-dxf.lo \
#	output-epd.lo \
#	output-pdf.lo \
#	output-mif.lo \
#	output-cgm.lo \
#	output-dr2d.lo \
#	output-swf.lo \
#	fit.lo \
#	bitmap.lo \
#	spline.lo \
#	curve.lo \
#	epsilon-equal.lo \
#	vector.lo \
#	color.lo \
#	autotrace.lo \
#	output.lo \
#	input.lo \
#	pxl-outline.lo \
#	median.lo \
#	thin-image.lo \
#	logreport.lo \
#	filename.lo \
#	xstd.lo \
#	despeckle.lo \
#	exception.lo \
#	strgicmp.lo \
#	image-proc.lo
##am_libautotrace_la_OBJECTS = \
##	input-pnm.lo \
##	input-bmp.lo \
##	input-tga.lo \
##	input-magick.lo \
##	output-eps.lo \
##	output-er.lo \
##	output-fig.lo \
##	output-sk.lo \
##	output-svg.lo \
##	output-p2e.lo \
##	output-emf.lo \
##	output-dxf.lo \
##	output-epd.lo \
##	output-pdf.lo \
##	output-mif.lo \
##	output-cgm.lo \
##	output-dr2d.lo \
##	output-pstoedit.lo \
##	fit.lo \
##	bitmap.lo \
##	spline.lo \
##	curve.lo \
##	epsilon-equal.lo \
##	vector.lo \
##	color.lo \
##	autotrace.lo \
##	output.lo \
##	input.lo \
##	pxl-outline.lo \
##	median.lo \
##	thin-image.lo \
##	logreport.lo \
##	filename.lo \
##	xstd.lo \
##	despeckle.lo \
##	exception.lo \
##	strgicmp.lo \
##	image-proc.lo
#am_libautotrace_la_OBJECTS = \
#	input-pnm.lo \
#	input-bmp.lo \
#	input-tga.lo \
#	output-eps.lo \
#	output-er.lo \
#	output-fig.lo \
#	output-sk.lo \
#	output-svg.lo \
#	output-p2e.lo \
#	output-emf.lo \
#	output-dxf.lo \
#	output-epd.lo \
#	output-pdf.lo \
#	output-mif.lo \
#	output-cgm.lo \
#	output-dr2d.lo \
#	output-pstoedit.lo \
#	fit.lo \
#	bitmap.lo \
#	spline.lo \
#	curve.lo \
#	epsilon-equal.lo \
#	vector.lo \
#	color.lo \
#	autotrace.lo \
#	output.lo \
#	input.lo \
#	pxl-outline.lo \
#	median.lo \
#	thin-image.lo \
#	logreport.lo \
#	filename.lo \
#	xstd.lo \
#	despeckle.lo \
#	exception.lo \
#	strgicmp.lo \
#	image-proc.lo
###am_libautotrace_la_OBJECTS = \
###	input-pnm.lo \
###	input-bmp.lo \
###	input-tga.lo \
###	input-magick.lo \
###	output-eps.lo \
###	output-er.lo \
###	output-fig.lo \
###	output-sk.lo \
###	output-svg.lo \
###	output-p2e.lo \
###	output-emf.lo \
###	output-dxf.lo \
###	output-epd.lo \
###	output-pdf.lo \
###	output-mif.lo \
###	output-cgm.lo \
###	output-dr2d.lo \
###	output-swf.lo \
###	output-pstoedit.lo \
###	fit.lo \
###	bitmap.lo \
###	spline.lo \
###	curve.lo \
###	epsilon-equal.lo \
###	vector.lo \
###	color.lo \
###	autotrace.lo \
###	output.lo \
###	input.lo \
###	pxl-outline.lo \
###	median.lo \
###	thin-image.lo \
###	logreport.lo \
###	filename.lo \
###	xstd.lo \
###	despeckle.lo \
###	exception.lo \
###	strgicmp.lo \
###	image-proc.lo
##am_libautotrace_la_OBJECTS = \
##	input-pnm.lo \
##	input-bmp.lo \
##	input-tga.lo \
##	output-eps.lo \
##	output-er.lo \
##	output-fig.lo \
##	output-sk.lo \
##	output-svg.lo \
##	output-p2e.lo \
##	output-emf.lo \
##	output-dxf.lo \
##	output-epd.lo \
##	output-pdf.lo \
##	output-mif.lo \
##	output-cgm.lo \
##	output-dr2d.lo \
##	output-swf.lo \
##	output-pstoedit.lo \
##	fit.lo \
##	bitmap.lo \
##	spline.lo \
##	curve.lo \
##	epsilon-equal.lo \
##	vector.lo \
##	color.lo \
##	autotrace.lo \
##	output.lo \
##	input.lo \
##	pxl-outline.lo \
##	median.lo \
##	thin-image.lo \
##	logreport.lo \
##	filename.lo \
##	xstd.lo \
##	despeckle.lo \
##	exception.lo \
##	strgicmp.lo \
##	image-proc.lo
##am_libautotrace_la_OBJECTS = \
##	input-pnm.lo \
##	input-bmp.lo \
##	input-tga.lo \
##	input-png.lo \
##	input-magick.lo \
##	output-eps.lo \
##	output-er.lo \
##	output-fig.lo \
##	output-sk.lo \
##	output-svg.lo \
##	output-p2e.lo \
##	output-emf.lo \
##	output-dxf.lo \
##	output-epd.lo \
##	output-pdf.lo \
##	output-mif.lo \
##	output-cgm.lo \
##	output-dr2d.lo \
##	fit.lo \
##	bitmap.lo \
##	spline.lo \
##	curve.lo \
##	epsilon-equal.lo \
##	vector.lo \
##	color.lo \
##	autotrace.lo \
##	output.lo \
##	input.lo \
##	pxl-outline.lo \
##	median.lo \
##	thin-image.lo \
##	logreport.lo \
##	filename.lo \
##	xstd.lo \
##	despeckle.lo \
##	exception.lo \
##	strgicmp.lo \
##	image-proc.lo
#am_libautotrace_la_OBJECTS = \
#	input-pnm.lo \
#	input-bmp.lo \
#	input-tga.lo \
#	input-png.lo \
#	output-eps.lo \
#	output-er.lo \
#	output-fig.lo \
#	output-sk.lo \
#	output-svg.lo \
#	output-p2e.lo \
#	output-emf.lo \
#	output-dxf.lo \
#	output-epd.lo \
#	output-pdf.lo \
#	output-mif.lo \
#	output-cgm.lo \
#	output-dr2d.lo \
#	fit.lo \
#	bitmap.lo \
#	spline.lo \
#	curve.lo \
#	epsilon-equal.lo \
#	vector.lo \
#	color.lo \
#	autotrace.lo \
#	output.lo \
#	input.lo \
#	pxl-outline.lo \
#	median.lo \
#	thin-image.lo \
#	logreport.lo \
#	filename.lo \
#	xstd.lo \
#	despeckle.lo \
#	exception.lo \
#	strgicmp.lo \
#	image-proc.lo
###am_libautotrace_la_OBJECTS = \
###	input-pnm.lo \
###	input-bmp.lo \
###	input-tga.lo \
###	input-png.lo \
###	input-magick.lo \
###	output-eps.lo \
###	output-er.lo \
###	output-fig.lo \
###	output-sk.lo \
###	output-svg.lo \
###	output-p2e.lo \
###	output-emf.lo \
###	output-dxf.lo \
###	output-epd.lo \
###	output-pdf.lo \
###	output-mif.lo \
###	output-cgm.lo \
###	output-dr2d.lo \
###	output-swf.lo \
###	fit.lo \
###	bitmap.lo \
###	spline.lo \
###	curve.lo \
###	epsilon-equal.lo \
###	vector.lo \
###	color.lo \
###	autotrace.lo \
###	output.lo \
###	input.lo \
###	pxl-outline.lo \
###	median.lo \
###	thin-image.lo \
###	logreport.lo \
###	filename.lo \
###	xstd.lo \
###	despeckle.lo \
###	exception.lo \
###	strgicmp.lo \
###	image-proc.lo
##am_libautotrace_la_OBJECTS = \
##	input-pnm.lo \
##	input-bmp.lo \
##	input-tga.lo \
##	input-png.lo \
##	output-eps.lo \
##	output-er.lo \
##	output-fig.lo \
##	output-sk.lo \
##	output-svg.lo \
##	output-p2e.lo \
##	output-emf.lo \
##	output-dxf.lo \
##	output-epd.lo \
##	output-pdf.lo \
##	output-mif.lo \
##	output-cgm.lo \
##	output-dr2d.lo \
##	output-swf.lo \
##	fit.lo \
##	bitmap.lo \
##	spline.lo \
##	curve.lo \
##	epsilon-equal.lo \
##	vector.lo \
##	color.lo \
##	autotrace.lo \
##	output.lo \
##	input.lo \
##	pxl-outline.lo \
##	median.lo \
##	thin-image.lo \
##	logreport.lo \
##	filename.lo \
##	xstd.lo \
##	despeckle.lo \
##	exception.lo \
##	strgicmp.lo \
##	image-proc.lo
###am_libautotrace_la_OBJECTS = \
###	input-pnm.lo \
###	input-bmp.lo \
###	input-tga.lo \
###	input-png.lo \
###	input-magick.lo \
###	output-eps.lo \
###	output-er.lo \
###	output-fig.lo \
###	output-sk.lo \
###	output-svg.lo \
###	output-p2e.lo \
###	output-emf.lo \
###	output-dxf.lo \
###	output-epd.lo \
###	output-pdf.lo \
###	output-mif.lo \
###	output-cgm.lo \
###	output-dr2d.lo \
###	output-pstoedit.lo \
###	fit.lo \
###	bitmap.lo \
###	spline.lo \
###	curve.lo \
###	epsilon-equal.lo \
###	vector.lo \
###	color.lo \
###	autotrace.lo \
###	output.lo \
###	input.lo \
###	pxl-outline.lo \
###	median.lo \
###	thin-image.lo \
###	logreport.lo \
###	filename.lo \
###	xstd.lo \
###	despeckle.lo \
###	exception.lo \
###	strgicmp.lo \
###	image-proc.lo
##am_libautotrace_la_OBJECTS = \
##	input-pnm.lo \
##	input-bmp.lo \
##	input-tga.lo \
##	input-png.lo \
##	output-eps.lo \
##	output-er.lo \
##	output-fig.lo \
##	output-sk.lo \
##	output-svg.lo \
##	output-p2e.lo \
##	output-emf.lo \
##	output-dxf.lo \
##	output-epd.lo \
##	output-pdf.lo \
##	output-mif.lo \
##	output-cgm.lo \
##	output-dr2d.lo \
##	output-pstoedit.lo \
##	fit.lo \
##	bitmap.lo \
##	spline.lo \
##	curve.lo \
##	epsilon-equal.lo \
##	vector.lo \
##	color.lo \
##	autotrace.lo \
##	output.lo \
##	input.lo \
##	pxl-outline.lo \
##	median.lo \
##	thin-image.lo \
##	logreport.lo \
##	filename.lo \
##	xstd.lo \
##	despeckle.lo \
##	exception.lo \
##	strgicmp.lo \
##	image-proc.lo
####am_libautotrace_la_OBJECTS = \
####	input-pnm.lo \
####	input-bmp.lo \
####	input-tga.lo \
####	input-png.lo \
####	input-magick.lo \
####	output-eps.lo \
####	output-er.lo \
####	output-fig.lo \
####	output-sk.lo \
####	output-svg.lo \
####	output-p2e.lo \
####	output-emf.lo \
####	output-dxf.lo \
####	output-epd.lo \
####	output-pdf.lo \
####	output-mif.lo \
####	output-cgm.lo \
####	output-dr2d.lo \
####	output-swf.lo \
####	output-pstoedit.lo \
####	fit.lo \
####	bitmap.lo \
####	spline.lo \
####	curve.lo \
####	epsilon-equal.lo \
####	vector.lo \
####	color.lo \
####	autotrace.lo \
####	output.lo \
####	input.lo \
####	pxl-outline.lo \
####	median.lo \
####	thin-image.lo \
####	logreport.lo \
####	filename.lo \
####	xstd.lo \
####	despeckle.lo \
####	exception.lo \
####	strgicmp.lo \
####	image-proc.lo
###am_libautotrace_la_OBJECTS = \
###	input-pnm.lo \
###	input-bmp.lo \
###	input-tga.lo \
###	input-png.lo \
###	output-eps.lo \
###	output-er.lo \
###	output-fig.lo \
###	output-sk.lo \
###	output-svg.lo \
###	output-p2e.lo \
###	output-emf.lo \
###	output-dxf.lo \
###	output-epd.lo \
###	output-pdf.lo \
###	output-mif.lo \
###	output-cgm.lo \
###	output-dr2d.lo \
###	output-swf.lo \
###	output-pstoedit.lo \
###	fit.lo \
###	bitmap.lo \
###	spline.lo \
###	curve.lo \
###	epsilon-equal.lo \
###	vector.lo \
###	color.lo \
###	autotrace.lo \
###	output.lo \
###	input.lo \
###	pxl-outline.lo \
###	median.lo \
###	thin-image.lo \
###	logreport.lo \
###	filename.lo \
###	xstd.lo \
###	despeckle.lo \
###	exception.lo \
###	strgicmp.lo \
###	image-proc.lo
libautotrace_la_OBJECTS = $(am_libautotrace_la_OBJECTS)
bin_PROGRAMS = autotrace$(EXEEXT)
PROGRAMS = $(bin_PROGRAMS)

am_autotrace_OBJECTS = atou.$(OBJEXT) main.$(OBJEXT) getopt.$(OBJEXT) \
	getopt1.$(OBJEXT)
autotrace_OBJECTS = $(am_autotrace_OBJECTS)
autotrace_DEPENDENCIES = libautotrace.la
autotrace_LDFLAGS =
SCRIPTS = $(bin_SCRIPTS)


DEFS = -DHAVE_CONFIG_H
DEFAULT_INCLUDES =  -I. -I$(srcdir) -I.
CPPFLAGS = 
LDFLAGS = 
LIBS = 
depcomp =
COMPILE = $(CC) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
	$(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
LTCOMPILE = $(LIBTOOL) --mode=compile $(CC) $(DEFS) $(DEFAULT_INCLUDES) \
	$(INCLUDES) $(AM_CPPFLAGS) $(CPPFLAGS) $(AM_CFLAGS) $(CFLAGS)
CCLD = $(CC)
LINK = $(LIBTOOL) --mode=link $(CCLD) $(AM_CFLAGS) $(CFLAGS) \
	$(AM_LDFLAGS) $(LDFLAGS) -o $@
CFLAGS = -g -O2
DIST_SOURCES = $(libautotrace_la_SOURCES) $(autotrace_SOURCES)

NROFF = nroff
MANS = $(man_MANS)
DATA = $(m4data_DATA) $(pkgconfig_DATA)

HEADERS = $(autotraceinclude_HEADERS) $(noinst_HEADERS)

DIST_COMMON = README $(autotraceinclude_HEADERS) $(noinst_HEADERS) \
	./stamp-h.in AUTHORS COPYING COPYING.LIB ChangeLog INSTALL \
	Makefile.am Makefile.in NEWS THANKS TODO acconfig.h aclocal.m4 \
	autotrace-config.in autotrace.pc.in autotrace.spec.in \
	config.guess config.h.in config.sub configure configure.in \
	install-sh ltmain.sh missing mkinstalldirs
SOURCES = $(libautotrace_la_SOURCES) $(autotrace_SOURCES)

all: $(BUILT_SOURCES) config.h
	$(MAKE) $(AM_MAKEFLAGS) all-am

.SUFFIXES:
.SUFFIXES: .c .lo .o .obj

mostlyclean-libtool:
	-rm -f *.lo

clean-libtool:
	-rm -rf .libs _libs

distclean-libtool:
	-rm -f libtool
$(srcdir)/Makefile.in: # Makefile.am  $(top_srcdir)/configure.in $(ACLOCAL_M4)
	cd $(top_srcdir) && \
	  $(AUTOMAKE) --foreign  Makefile
Makefile: # $(srcdir)/Makefile.in  $(top_builddir)/config.status
	cd $(top_builddir) && \
	  CONFIG_HEADERS= CONFIG_LINKS= \
	  CONFIG_FILES=$@ $(SHELL) ./config.status

$(top_builddir)/config.status: $(srcdir)/configure $(CONFIG_STATUS_DEPENDENCIES)
	$(SHELL) ./config.status --recheck
$(srcdir)/configure: # $(srcdir)/configure.in $(ACLOCAL_M4) $(CONFIGURE_DEPENDENCIES)
	cd $(srcdir) && $(AUTOCONF)

$(ACLOCAL_M4): # configure.in 
	cd $(srcdir) && $(ACLOCAL) $(ACLOCAL_AMFLAGS)
config.h: stamp-h
	@if test ! -f $@; then \
		rm -f stamp-h; \
		$(MAKE) stamp-h; \
	else :; fi
stamp-h: $(srcdir)/config.h.in $(top_builddir)/config.status
	@rm -f stamp-h stamp-hT
	@echo timestamp > stamp-hT 2> /dev/null
	cd $(top_builddir) \
	  && CONFIG_FILES= CONFIG_HEADERS=config.h \
	     $(SHELL) ./config.status
	@mv stamp-hT stamp-h
$(srcdir)/config.h.in: # $(srcdir)/./stamp-h.in
	@if test ! -f $@; then \
		rm -f $(srcdir)/./stamp-h.in; \
		$(MAKE) $(srcdir)/./stamp-h.in; \
	else :; fi
$(srcdir)/./stamp-h.in: $(top_srcdir)/configure.in $(ACLOCAL_M4) $(top_srcdir)/acconfig.h
	@rm -f $(srcdir)/./stamp-h.in $(srcdir)/./stamp-h.inT
	@echo timestamp > $(srcdir)/./stamp-h.inT 2> /dev/null
	cd $(top_srcdir) && $(AUTOHEADER)
	@mv $(srcdir)/./stamp-h.inT $(srcdir)/./stamp-h.in

distclean-hdr:
	-rm -f config.h
autotrace-config: $(top_builddir)/config.status autotrace-config.in
	cd $(top_builddir) && CONFIG_FILES=$@ CONFIG_HEADERS= CONFIG_LINKS= $(SHELL) ./config.status
autotrace.pc: $(top_builddir)/config.status autotrace.pc.in
	cd $(top_builddir) && CONFIG_FILES=$@ CONFIG_HEADERS= CONFIG_LINKS= $(SHELL) ./config.status
autotrace.spec: $(top_builddir)/config.status autotrace.spec.in
	cd $(top_builddir) && CONFIG_FILES=$@ CONFIG_HEADERS= CONFIG_LINKS= $(SHELL) ./config.status
install-libLTLIBRARIES: $(lib_LTLIBRARIES)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(libdir)
	@list='$(lib_LTLIBRARIES)'; for p in $$list; do \
	  if test -f $$p; then \
	    echo " $(LIBTOOL) --mode=install $(INSTALL) $(INSTALL_STRIP_FLAG) $$p $(DESTDIR)$(libdir)/$$p"; \
	    $(LIBTOOL) --mode=install $(INSTALL) $(INSTALL_STRIP_FLAG) $$p $(DESTDIR)$(libdir)/$$p; \
	  else :; fi; \
	done

uninstall-libLTLIBRARIES:
	@$(NORMAL_UNINSTALL)
	@list='$(lib_LTLIBRARIES)'; for p in $$list; do \
	  echo " $(LIBTOOL) --mode=uninstall rm -f $(DESTDIR)$(libdir)/$$p"; \
	  $(LIBTOOL) --mode=uninstall rm -f $(DESTDIR)$(libdir)/$$p; \
	done

clean-libLTLIBRARIES:
	-test -z "$(lib_LTLIBRARIES)" || rm -f $(lib_LTLIBRARIES)
libautotrace.la: $(libautotrace_la_OBJECTS) $(libautotrace_la_DEPENDENCIES) 
	$(LINK) -rpath $(libdir) $(libautotrace_la_LDFLAGS) $(libautotrace_la_OBJECTS) $(libautotrace_la_LIBADD) $(LIBS)
install-binPROGRAMS: $(bin_PROGRAMS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  p1=`echo $$p|sed 's/$(EXEEXT)$$//'`; \
	  if test -f $$p \
	     || test -f $$p1 \
	  ; then \
	    f=`echo $$p1|sed '$(transform);s/$$/$(EXEEXT)/'`; \
	   echo " $(INSTALL_PROGRAM_ENV) $(LIBTOOL) --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$f"; \
	   $(INSTALL_PROGRAM_ENV) $(LIBTOOL) --mode=install $(INSTALL_PROGRAM) $$p $(DESTDIR)$(bindir)/$$f; \
	  else :; fi; \
	done

uninstall-binPROGRAMS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_PROGRAMS)'; for p in $$list; do \
	  f=`echo $$p|sed 's/$(EXEEXT)$$//;$(transform);s/$$/$(EXEEXT)/'`; \
	  echo " rm -f $(DESTDIR)$(bindir)/$$f"; \
	  rm -f $(DESTDIR)$(bindir)/$$f; \
	done

clean-binPROGRAMS:
	-test -z "$(bin_PROGRAMS)" || rm -f $(bin_PROGRAMS)
autotrace$(EXEEXT): $(autotrace_OBJECTS) $(autotrace_DEPENDENCIES) 
	@rm -f autotrace$(EXEEXT)
	$(LINK) $(autotrace_LDFLAGS) $(autotrace_OBJECTS) $(autotrace_LDADD) $(LIBS)
install-binSCRIPTS: $(bin_SCRIPTS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(bindir)
	@list='$(bin_SCRIPTS)'; for p in $$list; do \
	  f="`echo $$p|sed '$(transform)'`"; \
	  if test -f $$p; then \
	    echo " $(INSTALL_SCRIPT) $$p $(DESTDIR)$(bindir)/$$f"; \
	    $(INSTALL_SCRIPT) $$p $(DESTDIR)$(bindir)/$$f; \
	  elif test -f $(srcdir)/$$p; then \
	    echo " $(INSTALL_SCRIPT) $(srcdir)/$$p $(DESTDIR)$(bindir)/$$f"; \
	    $(INSTALL_SCRIPT) $(srcdir)/$$p $(DESTDIR)$(bindir)/$$f; \
	  else :; fi; \
	done

uninstall-binSCRIPTS:
	@$(NORMAL_UNINSTALL)
	@list='$(bin_SCRIPTS)'; for p in $$list; do \
	  f="`echo $$p|sed '$(transform)'`"; \
	  echo " rm -f $(DESTDIR)$(bindir)/$$f"; \
	  rm -f $(DESTDIR)$(bindir)/$$f; \
	done

mostlyclean-compile:
	-rm -f *.$(OBJEXT) core *.core

distclean-compile:
	-rm -f *.tab.c

.c.o:
	$(COMPILE) -c `test -f $< || echo '$(srcdir)/'`$<

.c.obj:
	$(COMPILE) -c `cygpath -w $<`

.c.lo:
	$(LTCOMPILE) -c -o $@ `test -f $< || echo '$(srcdir)/'`$<
uninstall-info-am:

man1dir = $(mandir)/man1
install-man1: $(man1_MANS) $(man_MANS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(man1dir)
	@list='$(man1_MANS) $(dist_man1_MANS) $(nodist_man1_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  if test -f $(srcdir)/$$i; then file=$(srcdir)/$$i; \
	  else file=$$i; fi; \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst"; \
	  $(INSTALL_DATA) $$file $(DESTDIR)$(man1dir)/$$inst; \
	done
uninstall-man1:
	@$(NORMAL_UNINSTALL)
	@list='$(man1_MANS) $(dist_man1_MANS) $(nodist_man1_MANS)'; \
	l2='$(man_MANS) $(dist_man_MANS) $(nodist_man_MANS)'; \
	for i in $$l2; do \
	  case "$$i" in \
	    *.1*) list="$$list $$i" ;; \
	  esac; \
	done; \
	for i in $$list; do \
	  ext=`echo $$i | sed -e 's/^.*\\.//'`; \
	  inst=`echo $$i | sed -e 's/\\.[0-9a-z]*$$//'`; \
	  inst=`echo $$inst | sed -e 's/^.*\///'`; \
	  inst=`echo $$inst | sed '$(transform)'`.$$ext; \
	  echo " rm -f $(DESTDIR)$(man1dir)/$$inst"; \
	  rm -f $(DESTDIR)$(man1dir)/$$inst; \
	done
install-m4dataDATA: $(m4data_DATA)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(m4datadir)
	@list='$(m4data_DATA)'; for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  f="`echo $$p | sed -e 's|^.*/||'`"; \
	  echo " $(INSTALL_DATA) $$d$$p $(DESTDIR)$(m4datadir)/$$f"; \
	  $(INSTALL_DATA) $$d$$p $(DESTDIR)$(m4datadir)/$$f; \
	done

uninstall-m4dataDATA:
	@$(NORMAL_UNINSTALL)
	@list='$(m4data_DATA)'; for p in $$list; do \
	  f="`echo $$p | sed -e 's|^.*/||'`"; \
	  echo " rm -f $(DESTDIR)$(m4datadir)/$$f"; \
	  rm -f $(DESTDIR)$(m4datadir)/$$f; \
	done
install-pkgconfigDATA: $(pkgconfig_DATA)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(pkgconfigdir)
	@list='$(pkgconfig_DATA)'; for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  f="`echo $$p | sed -e 's|^.*/||'`"; \
	  echo " $(INSTALL_DATA) $$d$$p $(DESTDIR)$(pkgconfigdir)/$$f"; \
	  $(INSTALL_DATA) $$d$$p $(DESTDIR)$(pkgconfigdir)/$$f; \
	done

uninstall-pkgconfigDATA:
	@$(NORMAL_UNINSTALL)
	@list='$(pkgconfig_DATA)'; for p in $$list; do \
	  f="`echo $$p | sed -e 's|^.*/||'`"; \
	  echo " rm -f $(DESTDIR)$(pkgconfigdir)/$$f"; \
	  rm -f $(DESTDIR)$(pkgconfigdir)/$$f; \
	done
install-autotraceincludeHEADERS: $(autotraceinclude_HEADERS)
	@$(NORMAL_INSTALL)
	$(mkinstalldirs) $(DESTDIR)$(autotraceincludedir)
	@list='$(autotraceinclude_HEADERS)'; for p in $$list; do \
	  if test -f "$$p"; then d=; else d="$(srcdir)/"; fi; \
	  f="`echo $$p | sed -e 's|^.*/||'`"; \
	  echo " $(INSTALL_HEADER) $$d$$p $(DESTDIR)$(autotraceincludedir)/$$f"; \
	  $(INSTALL_HEADER) $$d$$p $(DESTDIR)$(autotraceincludedir)/$$f; \
	done

uninstall-autotraceincludeHEADERS:
	@$(NORMAL_UNINSTALL)
	@list='$(autotraceinclude_HEADERS)'; for p in $$list; do \
	  f="`echo $$p | sed -e 's|^.*/||'`"; \
	  echo " rm -f $(DESTDIR)$(autotraceincludedir)/$$f"; \
	  rm -f $(DESTDIR)$(autotraceincludedir)/$$f; \
	done

tags: TAGS

ID: $(HEADERS) $(SOURCES) $(LISP) $(TAGS_FILES)
	list='$(SOURCES) $(HEADERS) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	mkid -fID $$unique $(LISP)

TAGS:  $(HEADERS) $(SOURCES) config.h.in $(TAGS_DEPENDENCIES) \
		$(TAGS_FILES) $(LISP)
	tags=; \
	here=`pwd`; \
	list='$(SOURCES) $(HEADERS) $(TAGS_FILES)'; \
	unique=`for i in $$list; do \
	    if test -f "$$i"; then echo $$i; else echo $(srcdir)/$$i; fi; \
	  done | \
	  $(AWK) '    { files[$$0] = 1; } \
	       END { for (i in files) print i; }'`; \
	test -z "$(ETAGS_ARGS)config.h.in$$unique$(LISP)$$tags" \
	  || etags $(ETAGS_ARGS) $$tags config.h.in $$unique $(LISP)

GTAGS:
	here=`CDPATH=: && cd $(top_builddir) && pwd` \
	  && cd $(top_srcdir) \
	  && gtags -i $(GTAGS_ARGS) $$here

distclean-tags:
	-rm -f TAGS ID GTAGS GRTAGS GSYMS GPATH

DISTFILES = $(DIST_COMMON) $(DIST_SOURCES) $(TEXINFOS) $(EXTRA_DIST)

top_distdir = .
# Avoid unsightly `./'.
distdir = $(PACKAGE)-$(VERSION)

GZIP_ENV = --best

distdir: $(DISTFILES)
	-chmod -R a+w $(distdir) >/dev/null 2>&1; rm -rf $(distdir)
	mkdir $(distdir)
	$(mkinstalldirs) $(distdir)/.
	@for file in $(DISTFILES); do \
	  if test -f $$file; then d=.; else d=$(srcdir); fi; \
	  dir=`echo "$$file" | sed -e 's,/[^/]*$$,,'`; \
	  if test "$$dir" != "$$file" && test "$$dir" != "."; then \
	    $(mkinstalldirs) "$(distdir)/$$dir"; \
	  fi; \
	  if test -d $$d/$$file; then \
	    cp -pR $$d/$$file $(distdir) \
	    || exit 1; \
	  else \
	    test -f $(distdir)/$$file \
	    || cp -p $$d/$$file $(distdir)/$$file \
	    || exit 1; \
	  fi; \
	done
	$(MAKE) $(AM_MAKEFLAGS) \
	  top_distdir="${top_distdir}" distdir="$(distdir)" \
	  dist-hook
	-find $(distdir) -type d ! -perm -777 -exec chmod a+rwx {} \; -o \
	  ! -type d ! -perm -444 -links 1 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -400 -exec chmod a+r {} \; -o \
	  ! -type d ! -perm -444 -exec $(SHELL) $(install_sh) -c -m a+r {} {} \; \
	|| chmod -R a+r $(distdir)
dist: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	-chmod -R a+w $(distdir) >/dev/null 2>&1; rm -rf $(distdir)

# This target untars the dist file and tries a VPATH configuration.  Then
# it guarantees that the distribution is self-contained by making another
# tarfile.
distcheck: dist
	-chmod -R a+w $(distdir) > /dev/null 2>&1; rm -rf $(distdir)
	GZIP=$(GZIP_ENV) gunzip -c $(distdir).tar.gz | $(AMTAR) xf -
	chmod -R a-w $(distdir); chmod a+w $(distdir)
	mkdir $(distdir)/=build
	mkdir $(distdir)/=inst
	chmod a-w $(distdir)
	dc_install_base=`CDPATH=: && cd $(distdir)/=inst && pwd` \
	  && cd $(distdir)/=build \
	  && ../configure --srcdir=.. --prefix=$$dc_install_base \
	  && $(MAKE) $(AM_MAKEFLAGS) \
	  && $(MAKE) $(AM_MAKEFLAGS) dvi \
	  && $(MAKE) $(AM_MAKEFLAGS) check \
	  && $(MAKE) $(AM_MAKEFLAGS) install \
	  && $(MAKE) $(AM_MAKEFLAGS) installcheck \
	  && $(MAKE) $(AM_MAKEFLAGS) uninstall \
	  && (test `find $$dc_install_base -type f -print | wc -l` -le 1 \
	     || (echo "Error: files left after uninstall" 1>&2; \
	         exit 1) ) \
	  && $(MAKE) $(AM_MAKEFLAGS) dist \
	  && $(MAKE) $(AM_MAKEFLAGS) distclean \
	  && rm -f $(distdir).tar.gz \
	  && (test `find . -type f -print | wc -l` -eq 0 \
	     || (echo "Error: files left after distclean" 1>&2; \
	         exit 1) )
	-chmod -R a+w $(distdir) > /dev/null 2>&1; rm -rf $(distdir)
	@echo "$(distdir).tar.gz is ready for distribution" | \
	  sed 'h;s/./=/g;p;x;p;x'
check-am: all-am
check: check-am
all-am: Makefile $(LTLIBRARIES) $(PROGRAMS) $(SCRIPTS) $(MANS) $(DATA) \
		$(HEADERS) config.h
install-binPROGRAMS: install-libLTLIBRARIES


installdirs:
	$(mkinstalldirs) $(DESTDIR)$(libdir) $(DESTDIR)$(bindir) $(DESTDIR)$(bindir) $(DESTDIR)$(man1dir) $(DESTDIR)$(m4datadir) $(DESTDIR)$(pkgconfigdir) $(DESTDIR)$(autotraceincludedir)

install: install-am
install-exec: install-exec-am
install-data: install-data-am
uninstall: uninstall-am

install-am: all-am
	@$(MAKE) $(AM_MAKEFLAGS) install-exec-am install-data-am

installcheck: installcheck-am
install-strip:
	$(MAKE) $(AM_MAKEFLAGS) INSTALL_PROGRAM="$(INSTALL_STRIP_PROGRAM)" \
	  `test -z '$(STRIP)' || \
	    echo "INSTALL_PROGRAM_ENV=STRIPPROG='$(STRIP)'"` install
mostlyclean-generic:

clean-generic:

distclean-generic:
	-rm -f Makefile $(CONFIG_CLEAN_FILES) stamp-h stamp-h[0-9]*

maintainer-clean-generic:
	@echo "This command is intended for maintainers to use"
	@echo "it deletes files that may require special tools to rebuild."
	-test -z "$(BUILT_SOURCES)" || rm -f $(BUILT_SOURCES)
clean: clean-am

clean-am: clean-binPROGRAMS clean-generic clean-libLTLIBRARIES \
	clean-libtool mostlyclean-am

dist-all: distdir
	$(AMTAR) chof - $(distdir) | GZIP=$(GZIP_ENV) gzip -c >$(distdir).tar.gz
	-chmod -R a+w $(distdir) >/dev/null 2>&1; rm -rf $(distdir)
distclean: distclean-am
	-rm -f config.status config.cache config.log
distclean-am: clean-am distclean-compile distclean-generic distclean-hdr \
	distclean-libtool distclean-tags

dvi: dvi-am

dvi-am:

info: info-am

info-am:

install-data-am: install-autotraceincludeHEADERS install-m4dataDATA \
	install-man install-pkgconfigDATA

install-exec-am: install-binPROGRAMS install-binSCRIPTS \
	install-libLTLIBRARIES

install-info: install-info-am

install-man: install-man1

installcheck-am:

maintainer-clean: maintainer-clean-am

maintainer-clean-am: distclean-am maintainer-clean-generic

mostlyclean: mostlyclean-am

mostlyclean-am: mostlyclean-compile mostlyclean-generic \
	mostlyclean-libtool

uninstall-am: uninstall-autotraceincludeHEADERS uninstall-binPROGRAMS \
	uninstall-binSCRIPTS uninstall-info-am uninstall-libLTLIBRARIES \
	uninstall-m4dataDATA uninstall-man uninstall-pkgconfigDATA

uninstall-man: uninstall-man1

.PHONY: GTAGS all all-am check check-am clean clean-binPROGRAMS \
	clean-generic clean-libLTLIBRARIES clean-libtool dist dist-all \
	distcheck distclean distclean-compile distclean-generic \
	distclean-hdr distclean-libtool distclean-tags distdir dvi \
	dvi-am info info-am install install-am \
	install-autotraceincludeHEADERS install-binPROGRAMS \
	install-binSCRIPTS install-data install-data-am install-exec \
	install-exec-am install-info install-info-am \
	install-libLTLIBRARIES install-m4dataDATA install-man \
	install-man1 install-pkgconfigDATA install-strip installcheck \
	installcheck-am installdirs maintainer-clean \
	maintainer-clean-generic mostlyclean mostlyclean-compile \
	mostlyclean-generic mostlyclean-libtool tags uninstall \
	uninstall-am uninstall-autotraceincludeHEADERS \
	uninstall-binPROGRAMS uninstall-binSCRIPTS uninstall-info-am \
	uninstall-libLTLIBRARIES uninstall-m4dataDATA uninstall-man \
	uninstall-man1 uninstall-pkgconfigDATA

autotrace-config: autotrace-config.in

autotrace-config.in: autotrace-config.af
	autofig $<

dist-hook: autotrace.spec
	cp autotrace.spec $(distdir)

rpm: dist autotrace.spec
	rpm -bb autotrace.spec
# Tell versions [3.59,3.63) of GNU make to not export all variables.
# Otherwise a system limit (for SysV at least) may be exceeded.
.NOEXPORT:
