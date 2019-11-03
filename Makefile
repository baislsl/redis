# Top level makefile, the real shit is at src/Makefile

default: all

.DEFAULT:
	cd src && $(MAKE) $@

install:
	cd src && $(MAKE) $@

.PHONY: install

view_root=views
src=src

view_list: level1


## https://www.zhihu.com/question/28677076

level1:
	mkdir $(view_root)
	mkdir $(view_root)/level1
	cp $(src)/zmalloc.c $(src)/zmalloc.h \
        $(src)/sds.c $(src)/sds.h \
        $(src)/adlist.c $(src)/adlist.h \
        $(src)/dict.c $(src)/dict.h \
        $(src)/t_zset.c $(src)/server.h \
        $(src)/hyperloglog.c \
        $(view_root)/level1/




