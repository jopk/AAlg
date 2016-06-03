#!/bin/julia

rand_seq(n::Int) = rand(1:n^2, n)

mergesort(n::Int) = mergesort(rand_seq(n))[1]

function mergesort(Ap::Array)
	A = copy(Ap)
	if length(A) <= 1
		return 0, A
	end
	m = div(length(A), 2)
	pL, L = mergesort(A[1:m])
	pR, R = mergesort(A[m+1:end])
	res = Array(eltype(A), length(A))
	idx = 1
	pA = 0
	while !isempty(L) && !isempty(R)
		pA += 1
		if L[1] <= R[1]
			res[idx] = L[1]
			L = L[2:end]
		else
			res[idx] = R[1]
			R = R[2:end]
		end
		idx += 1
	end
	while !isempty(L)
		pA += 1
		res[idx] = L[1]
		L = L[2:end]
		idx += 1
	end
	while !isempty(R)
		pA += 1
		res[idx] = R[1]
		R = R[2:end]
		idx += 1
	end
	return pA + pL + pR, res
end

