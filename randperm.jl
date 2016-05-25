#!/bin/julia

function position(i::Int, n::Int)
	sum = 0
	for j = 1:n
		x = abs(i - j)
		sum += x
	end
	expected = sum / n
end

function expected_value(n)
	E = Float64[]
	for i = 1:n
		x = position(i, n)
		push!(E, x)
	end
	return E, sum(E)
end
