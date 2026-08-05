
all: numerical-methods numerical-methods-release ito-calculus ito-calculus-release optimal-execution-release


releaseall: ito-calculus-release numerical-methods-release optimal-execution-release


numerical-methods:
	make -C numerical_methods/paper all


numerical-methods-release: numerical_methods/build/main.pdf
	mkdir -p pdf
	cp -pf numerical_methods/build/main.pdf pdf/numerical_methods.pdf


ito-calculus:
	make -C ito_calculus/paper all


ito-calculus-release: ito_calculus/build/main.pdf
	mkdir -p pdf
	cp -pf ito_calculus/build/main.pdf pdf/ito_calculus.pdf


optimal-execution:
	make -C optimal_execution/paper all

optimal-execution-release: optimal_execution/build/main.pdf
	mkdir -p pdf
	cp -pf optimal_execution/build/main.pdf pdf/optimal_execution.pdf


clean:
	make -C numerical_methods/paper cleanall
	make -C ito_calculus/paper cleanall
	make -C optimal_execution/paper cleanall


.PHONY: all releaseall clean numerical-methods numerical-methods-release ito-calculus ito-calculus-release optimal-execution optimal-execution-release

