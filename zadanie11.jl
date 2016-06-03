function balls_to_all_urns(N::Int64)
  urns = zeros(Int64,N)
  while minimum(urns) == 0
    x = rand(1:N)
    urns[x] = urns[x] + 1
  end
  return sum(urns),urns
end

function E(N::Int64)
  V = 0
  for i in 1:N
    V = V + 1/i
  end
  V = V*N
end

function Var(N::Int64)
  V = 0
  for i in 1:N
    V = V + 1/(i*i)
  end
  V = V*N*N
end

N = 10
println(balls_to_all_urns(N))
println(E(N))
println(Var(N))
