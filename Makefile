SOVER := 1

all:
	$(CC) $(wildcard *.c) $(CFLAGS) -install_name $(MEMO_PREFIX)$(MEMO_SUB_PREFIX)/lib/libiosexec.$(SOVER).dylib -shared -o libiosexec.$(SOVER).dylib

static:
	$(CC) $(wildcard *.c) $(CFLAGS) -c
	libtool -static -o libiosexec.a *.o
