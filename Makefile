# KallistiOS ##version##
#
# libpcx Makefile
# (c)2002 Dan Potter

TARGET = libpcx.a
OBJS = pcx.o

defaultall: create_kos_link $(OBJS) subdirs linklib

# creates the kos link to the headers
create_kos_link:
	rm -f ../include/pcx
	ln -s ../libpcx/include ../include/pcx

include $(KOS_BASE)/addons/Makefile.prefab

