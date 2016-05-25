#!/bin/julia

function geometric(p::Number)
	U = rand()
	X = floor(log(U) / log(p))
	return X
end
