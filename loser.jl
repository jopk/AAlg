#!/bin/julia

function loser(n::Int)
	A = collect(1:n)
	return loser(A, 0)
end

function loser(A::Array{Int}, s::Int)
	if length(A) == 1
		return A[1], s
	elseif length(A) == 0
		return nothing, s
	end
	Ap = Int[]
	while length(Ap) == 0
		for a in A
			if rand(0:1) == 1
				push!(Ap, a)
			end
		end
	end
	return loser(Ap, s+1)
end

