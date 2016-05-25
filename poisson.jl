#!/bin/julia

function poisson(lambda::Number)
	c = e^(-lambda)
	U = rand()
	P = U
	N = 0
	while P >= c
		U = rand()
		P = P*U
		N += 1
	end
	return N
end
