#!/bin/julia

function randperm_position(i::Int, n::Int)
	sum = 0
	for j = 1:n
		x = abs(i - j)
		sum += x
	end
	expected = sum / n
end

function randperm_expected_value(n::Int)
	E = Float64[]
	for i = 1:n
		x = randperm_position(i, n)
		push!(E, x)
	end
	return sum(E)
end

randperm(n) = randperm_expected_value(n)
