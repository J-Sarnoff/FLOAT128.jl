# 0 < x <= 1
# accurate for x=TD(DD)
function log1p(x::TD)
    y = x / (2.0+x)
    yy = y * y
    ypowj = y
    s = y
    z = x
    j = 3.0
    ypowj *= yy
    for i in 1:100
       z = s
       k = ypowj / j
       s += k
       j += 2.0
       ypowj *= yy
    end
    while (s != z) && j<280.0
       z = s
       k = ypowj / j
       s += k
       j += 2.0
       ypowj *= yy
    end
    mulby2(s)
end
# 1 < x 
function logGT1(x::TD)
  fr,ex = frexp(x)
  fr = mulby2(fr)
  fr = fr - 1.0
  ex = ex - 1
  log2pow = ex * td_log2
  log1plus = log1p(fr)
  log2pow + log1plus
end

function log(x::TD)
   if x == one(TD)
      zero(TD)
   elseif x.hi > 1.0
      logGT1(x)
   else x.hi > 1.0
      -logGT1(dd_recip(x))
   end
end

