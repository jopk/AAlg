function balls_from_all_urns(N::Int64, a::Int64)
  urns = zeros(Int64,N)
  fill!(urns,a)
  while minimum(urns) != 0
    x = rand(1:N)
    urns[x] = urns[x] - 1
  end
  return N*a-sum(urns),urns
end

function teoretical_val(N::Int64, a::Int64)
  return a*gamma(1+1/a)*N^(1-1/a)
end

N = 100
a = 5
println(balls_from_all_urns(N,a))
println(teoretical_val(N, a))
