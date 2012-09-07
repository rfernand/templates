src=tarea

all:
	@rubber -d $(src)
	@mkdir -p bin
	@cp $(src).pdf bin/
	@rubber --clean $(src)

clean:
	@rubber --clean
distclean: 
	rm -f bin/$(src).pdf
	rmdir bin
x:
	okular bin/$(src).pdf
