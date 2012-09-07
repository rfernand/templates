NAME=paper
BIN=bin

FLAGS=-output-directory $(BIN)

all:	pdf clean

pdf:
	@mkdir -p bin
	@echo "Generando presentación por primera vez..."
	pdflatex $(FLAGS) $(NAME).tex
	bibtex bin/$(NAME)
	@echo "y por segunda vez..."
	pdflatex $(FLAGS) $(NAME).tex

clean:
	@echo "Limpiando..."
	@rm -f $(BIN)/$(EXP).{aux,toc,log,tmp,dvi,idx,ilg,ind,bbl,blg,out,nav,snm} .my_log

distclean:
	@echo "Limpiando todo!..."
	@rm -f $(BIN)/$(EXP).{pdf,aux,toc,log,tmp,dvi,idx,ilg,ind,bbl,blg,out,nav,snm} .my_log

.PHONY: all clean distclean k

k:
	@echo "Opening $(SRCS).pdf with kpdf..."
	@kpdf $(SRCS).pdf &> /dev/null &
x:
	@echo "Opening $(SRCS).pdf with xpdf..."
	@xpdf $(SRCS).pdf &> /dev/null &
