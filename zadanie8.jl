function C(N)
  if N == 0
    return 0
  elseif N == 1
    return 1
  else
    return C(floor(N/2))+C(ceil(N/2))+N
  end
end

function get_alpha(N,V)
  V = V/(N*log(2,N))
  V = V/N
end

N = 10
V = C(N)
println(N)
println(V)
println(get_alpha(N,V))
