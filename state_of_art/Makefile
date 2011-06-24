NAME=soa
BIN=bin

FLAGS=-output-directory $(BIN)

all:	pdf clean

pdf:
	@rubber -d $(NAME)
	@mkdir -p bin
	@mv $(NAME).pdf bin/

clean:
	@rubber --clean $(NAME)

distclean:
	rm -f bin/$(src).pdf
	rmdir bin

.PHONY: all clean distclean k

k:
	@echo "Opening $(SRCS).pdf with kpdf..."
	@kpdf $(SRCS).pdf &> /dev/null &
x:
	@echo "Opening $(SRCS).pdf with xpdf..."
	@xpdf $(SRCS).pdf &> /dev/null &
