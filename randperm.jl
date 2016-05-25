#!/bin/julia

function randperm(len::Int)
	return randperm(1:len)
end

function randperm(r::Range{T})
	A = collect(r)
	return randperm(A)
end

function randperm(A::Array)
	Ap = copy(A)
	r = 1:length(Ap)
	for i = r
		x = rand(r)
		y = rand(r)
		Ap[x], Ap[y] = Ap[y], Ap[x]
	end
	return A
end

function experyment(times::Int)
	res = 0
	for t in 1:times
		A = randperm(10)
		sum = 0;
		for ai in 1:10
			i = A[ai]
			x = abs(ai - i)
			sum += x
		end
		res += sum
	end
	res = div(res, times)
	return res
end

