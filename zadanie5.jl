function polar_gen()
  fi = rand()
  fi = 2*pi*fi
  r = rand()
  return r*cos(fi), r*sin(fi)
end


print(polar_gen())
