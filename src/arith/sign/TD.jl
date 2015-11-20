sign(a::TD)    = sign(a.hi)
signbit(a::TD) = signbit(a.hi)

(-)(a::TD) = TD(-a.hi,-a.md,-a.lo)
(abs)(a::TD) = (a.hi >= zero(Float64) ? a : -a)

@inline flipsign(a::TD,b::TD) = TD(flipsign(a.hi,b.hi), flipsign(a.md,b.hi), flipsign(a.lo,b.hi))
@inline flipsign(a::TD,b::DD) = TD(flipsign(a.hi,b.hi), flipsign(a.md,b.hi), flipsign(a.lo,b.hi))
flipsign(a::DD,b::TD) = DD(flipsign(a.hi,b.hi), flipsign(a.lo,b.hi))
flipsign(a::TD,b::Float64) = TD(flipsign(a.hi,b), flipsign(a.md,b.hi), flipsign(a.lo,b))
flipsign(a::TD,b::Integer) = TD(flipsign(a.hi,b), flipsign(a.md,b.hi), flipsign(a.lo,b))

@inline function copysign(a::TD,b::Float64)
    if (b < zero(Float64))
        a.hi < zero(Float64) ? a : -a
    else
        a.hi < zero(Float64) ? -a : a
    end
end
copysign(a::TD,b::Integer) = copysign(a,convert(Float64,b))
copysign(a::TD,b::DD) = copysign(a,b.hi)
@inline copysign(a::TD,b::TD) = copysign(a, b.hi)
copysign(a::DD,b::TD) = copysign(a.hi,b.hi)
