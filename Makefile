# Tita Mihai-Georgian 312CD

CC ?= gcc
CFLAGS ?= -Wall -Wextra -std=c99
LDFLAGS ?=

SRCDIR ?= src
BINDIR ?= bin

EXEC ?= main

SRCS = $(wildcard $(SRCDIR)/*.c)

build:	$(SRCS)
	$(CC) $(CFLAGS) $^ -o $(BINDIR)/$(EXEC) $(LDFLAGS)

clean:
	rm -rf $(BINDIR)/*

format:
	clang-format -i -style=file $(SRCDIR)/*.c

.PHONY:	clean format
