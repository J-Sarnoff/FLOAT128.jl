# predicates

isnan(a::TD) = isnan(a.hi)
isinf(a::TD) = isinf(a.hi)
isfinite(a::TD) = isfinite(a.hi)
