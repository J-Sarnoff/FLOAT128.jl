#=
#    Internal Use Only
=#


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


for fn in (:floor, :ceil, :round)
  @eval begin
    function ($fn)(a::TD)
        hi = ($fn)(a.hi)
        md = lo = zero(Float64)
        if (hi == a.hi)
            md = ($fn)(a.md)
            hi,md = eftSum2inOrder(hi,md)
            if md == a.md
                lo = ($fn)(a.lo)
                md,lo = eftSum2inOrder(md,lo)
                hi,md = eftSum2inOrder(hi,md)
            end
        end
        TD(hi,md,lo)
    end
  end    
end

@inline function (trunc)(a::TD)
    a.hi >= zero(Float64) ? floor(a) : ceil(a)
end

"""
stretch is the opposite of trunc()
it extends to the nearest integer away from zero
"""
@inline function (stretch)(a::TD)
    a.hi >= zero(Float64) ? ceil(a) : floor(a)
end


