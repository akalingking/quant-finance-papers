
all: manuscript release


manuscript:
	make -C numerical_methods/paper all


release: numerical_methods/build/main.pdf
	mkdir -p pdf
	cp -pf numerical_methods/build/main.pdf pdf/numerical_methods.pdf


clean:
	make -C numerical_methods/paper cleanall

