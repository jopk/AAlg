#!/bin/julia

function geometric(p::Number)
	U = rand()
	X = floor(log(U) / log(1-p))
	return X
end
