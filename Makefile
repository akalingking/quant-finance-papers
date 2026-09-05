
all: numerical-methods numerical-methods-release stochastic-calculus stochastic-calculus-release optimal-execution-release


releaseall: stochastic-calculus-release numerical-methods-release optimal-execution-release


numerical-methods:
	make -C numerical_methods/paper all


numerical-methods-release: numerical_methods/build/main.pdf
	mkdir -p pdf
	cp -pf numerical_methods/build/main.pdf pdf/numerical_methods.pdf


stochastic-calculus:
	make -C stochastic_calculus/paper all


stochastic-calculus-release: stochastic_calculus/build/main.pdf
	mkdir -p pdf
	cp -pf stochastic_calculus/build/main.pdf pdf/stochastic_calculus.pdf


optimal-execution:
	make -C optimal_execution/paper all

optimal-execution-release: optimal_execution/build/main.pdf
	mkdir -p pdf
	cp -pf optimal_execution/build/main.pdf pdf/optimal_execution.pdf


clean:
	make -C numerical_methods/paper cleanall
	make -C stochastic_calculus/paper cleanall
	make -C optimal_execution/paper cleanall


.PHONY: all releaseall clean numerical-methods numerical-methods-release stochastic-calculus stochastic-calculus-release optimal-execution optimal-execution-release

