# predicates

isnan(a::DD)        = isnan(a.hi)
isinf(a::DD)        = isinf(a.hi)
isfinite(a::DD)     = isfinite(a.hi)
issubnormal(a::DD)  = (issubnormal(a.hi) | issubnormal(a.lo))

iszero(a::DD)       = (a.hi == zero(typeof(a.hi)))
ispos(a::DD)        = (a.hi >= zero(typeof(a.hi)))
ispoz(a::DD)        = !signbit(a.hi)
isneg(a::DD)        = signbit(a.hi)

# comparatives

@inline function isless(a::DD, b::DD)
    (a.hi < b.hi) || (a.hi==b.hi && a.lo<b.lo)
end
@inline function isless(a::DD, b::Float64)
    (a.hi < b) || (a.hi==b && a.lo<zero(Float64))
end
@inline function isless(a::Float64, b::DD)
    (a < b.hi) || (a==b.hi && b.lo<zero(Float64))
end
@inline function isequal(a::DD, b::DD)
    (a.hi == b.hi) && (a.lo == b.lo)
end
@inline function isequal(a::DD, b::Float64)
    (a.hi == b) && (a.lo == zero(Float64))
end
@inline function isequal(a::Float64, b::DD)
    (a == b.hi) && (b.lo == zero(Float64))
end

@inline (==)(a::DD,b::DD) = (a.hi == b.hi) && (a.lo == b.lo)
@inline (< )(a::DD,b::DD) = (a.hi < b.hi) || (a.hi==b.hi && a.lo<b.lo)
@inline (<=)(a::DD,b::DD) = (a.hi < b.hi) || (a.hi==b.hi && a.lo<=b.lo)
@inline (> )(a::DD,b::DD) = (a.hi > b.hi) || (a.hi==b.hi && a.lo>b.lo)
@inline (>=)(a::DD,b::DD) = (a.hi > b.hi) || (a.hi==b.hi && a.lo>=b.lo)
