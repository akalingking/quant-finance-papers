stochastic:
	make -C numerical_methods_for_stochastic_differential_equations/paper all
	mkdir -p output
	cp -pf numerical_methods_for_stochastic_differential_equations/paper/main.pdf output/numerical_methods_for_stochastic_differential_equations.pdf

stochasticclean:
	make -C numerical_methods_for_stochastic_differential_equations/paper cleanall
