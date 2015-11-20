
(-)(a::DD) = DD(-a.hi,-a.lo)
(abs)(a::DD) = (a.hi >= zero(Float64) ? a : -a)

@inline flipsign(a::DD,b::DD) = DD(flipsign(a.hi,b.hi), flipsign(a.lo,b.hi))
@inline flipsign(a::DD,b::Float64) = DD(flipsign(a.hi,b), flipsign(a.lo,b))
@inline flipsign(a::DD,b::Integer) = DD(flipsign(a.hi,b), flipsign(a.lo,b))

@inline function copysign(a::DD,b::Float64)
    if (b < zero(Float64))
        a.hi < zero(Float64) ? a : -a
    else
        a.hi < zero(Float64) ? -a : a
    end
end
@inline copysign(a::DD,b::Integer) = copysign(a,convert(Float64,b))
@inline copysign(a::DD,b::DD) = copysign(a,b.hi)



function (floor)(a::DD)
    hi = floor(a.hi)
    lo = 0.0
    if (hi == a.hi)
        lo = floor(a.lo)
        hi,lo = eftSum2inOrder(hi,lo)
    end
    DD(hi,lo)
end

function (ceil)(a::DD)
    hi = ceil(a.hi)
    lo = 0.0
    if (hi == a.hi)
        lo = ceil(a.lo)
        hi,lo = eftSum2inOrder(hi,lo)
    end
    DD(hi,lo)
end

function round(a::DD)
    hi = round(a.hi)
    lo = zero(Float64)
    if (hi == a.hi)
        lo = round(a.lo)
        hi,lo = eftSum2inOrder(hi,lo)
    end
    DD(hi,lo)
end

function (trunc)(a::DD)
    a.hi >= zero(F) ? floor(a) : ceil(a)
end

"""
stretch is the opposite of trunc()
it extends to the nearest integer away from zero
"""
function (stretch)(a::DD)
    a.hi >= zero(Float64) ? ceil(a) : floor(a)
end
