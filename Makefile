
all: manuscript release


manuscript:
	make -C numerical_methods/paper all


release: numerical_methods/paper/main.pdf
	mkdir -p pdf
	cp -pf numerical_methods/paper/main.pdf pdf/numerical_methods.pdf

clean:
	make -C numerical_methods/paper cleanall

