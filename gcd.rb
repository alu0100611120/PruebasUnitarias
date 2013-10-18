def gcd(u, v)
  u, v = u.abs, v.abs
  if (u==0 || v==0) #Con esta modificación podemos usar esta función tb para reducir
	return 1
  elsif
     while v > 0
        u, v = v, u % v
     end
     u
  end
end

puts gcd(6,3)
