#!/bin/julia

function randperm(len::Int)
	A = collect(1:len)
	return randperm!(A)
end

function randperm!(A::Array)
	r = 1:length(A)
	for i = r
		x = rand(r)
		y = rand(r)
		A[x], A[y] = A[y], A[x]
	end
	return A
end

