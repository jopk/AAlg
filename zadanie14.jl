#!/bin/julia

function optLoadDistr(m::Number, n::Number)
	for i = 1:m
		isPlaced = true
		while isPlaced
			j = rand(1:n)
			if (Float64(j) < Float64(Int64(i)/Int64(n) + 1))
				isPlaced = false
			end
		end
	end
	return 0
end