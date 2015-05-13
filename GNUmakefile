CFLAGS 	:=	-W -Wall -std=c99 -MMD
LEX			:=	flex

.PHONY : clean

basic:	basic.yy.o
	$(CC) $^ -o $@ -ll

basic.yy.c : basic.l
	$(LEX) -o $@ $^

clean:
	rm basic.yy.c *.o *.d basic

-include *.d

