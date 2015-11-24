# 0 < x <= 1
function log1p(x::DD)
end

# 0.0 < x <= 0.5
function log1m(x::DD)
end

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

# 2 < x
function logGT2(x::DD)
  fr,ex = frexp(x)  # here  [0.5 <= fr < 1.0)
  fr = 1.0 - fr
  log2pow = ex * dd_log2
  log1minus = log(fr)   
  log2pow + log1minus
end
