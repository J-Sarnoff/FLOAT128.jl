# 0 < x <= 1
# approximate
# use DD(log1p(TD(x))) for accuracy
function log1p(x::DD)
    y = x / (2.0+x)
    yy = y * y
    ypowj = y
    s = y
    z = x
    j = 3.0
    ypowj *= yy
    for i in 1:75
       z = s
       k = ypowj / j
       s += k
       j += 2.0
       ypowj *= yy
    end
    while (s != z) && j<250.0
       z = s
       k = ypowj / j
       s += k
       j += 2.0
       ypowj *= yy
    end
    mulby2(s)
end

#=
# 0.0 < x <= 0.5
function log1m(x::DD)
end
=#

# 1 < x 
function logGT1(x::DD)
  fr,ex = frexp(x)
  fr = mulby2(fr)
  fr = fr - 1.0
  ex = ex - 1
  log2pow = ex * dd_log2
  log1plus = log1p(fr)
  log2pow + log1plus
end

#=
# 2 < x
function logGT2(x::DD)
  fr,ex = frexp(x)  # here  [0.5 <= fr < 1.0)
  fr = 1.0 - fr
  log2pow = ex * dd_log2
  log1minus = log(fr)   
  log2pow + log1minus
end
=#

function log(x::DD)
   if DD(1.0, -5.0e-17) <= x <= DD(1.0, 5.0e-17)
      (x - 1.0) / sqrt(x)
   elseif x.hi > 1.0
      logGT1(x)
   else x.hi > 1.0
      -logGT1(dd_recip(x))
   end
end
