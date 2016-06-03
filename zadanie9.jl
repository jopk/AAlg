function balls_to_urns(N::Int64)
  urns = zeros(Int64,N)
  for i in 1:N
    x = rand(1:N)
    urns[x] = urns[x] + 1
  end
  return maximum(urns),urns
end

println(balls_to_urns(20))
