#!/bin/julia

rand_seq(n::Int) = rand(1:n^2, n)

quicksort(n::Int) = quicksort(rand_seq(n))

function quicksort(A::Array, l::Int=1, h::Int=length(A))
	qpor = 0
	if l < h
		q, qpor = partition(A, l, h)
		qporl = quicksort(A, l, q)
		qporh = quicksort(A, q+1, h)
	qpor += qporl + qporh
	end
	return qpor
end

function partition(A::Array, l::Int, h::Int)
	m = div((l + h), 2)
	pivot = A[m]
	A[l], A[m] = A[m], A[l]
	i, j = l, h
	qpor = 0
	while true
		if !(A[j] > pivot)
			qpor += 1
		end
		while A[j] > pivot
			qpor += 1
			j -= 1
		end
		if !(A[i] < pivot)
			qpor += 1
		end
		while A[i] < pivot
			qpor += 1
			i += 1
		end
		qpor += 1
		if i < j
			A[i], A[j] = A[j], A[i]
			i += 1
			j -= 1
		else
			return j, qpor
		end
	end
end
