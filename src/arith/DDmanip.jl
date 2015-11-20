
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


@inline function mulby2(a::DD)
    DD(a.hi*2.0, a.lo*2.0)
end

@inline function divby2(a::DD)
    DD(a.hi*0.5, a.lo*0.5)
end

@inline function mulbypow2(a::DD,p::Float64)
    DD(a.hi*p, a.lo*p)
end

@inline function divbypow2(a::DD,p::Float64)
    fr,xp = frexp(p)
    mulbypow2(a, ldexp(fr,-xp))
end

function div{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    temp = a/b
    trunc(temp)
end
div(a::DD,b::Float64) = div(a,DD(b))
div(a::Float64,b::DD) = div(DD(a),b)

function fld{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    floor( a/b )
end
fld(a::DD,b::Float64) = fld(a,DD(b))
fld(a::Float64,b::DD) = fld(DD(a),b)

function cld{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    ceil( a/b )
end
cld(a::DD,b::Float64) = cld(a,DD(b))
cld(a::Float64,b::DD) = cld(DD(a),b)

function rem{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    a - div(a,b)*b
end

function mod{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("modulus must be nonzero"))
    end
    if signbit(a.hi)==signbit(b.hi)
        rem(a,b)
    else
        d = floor(a/b)
        a - d*b
    end
end
mod(a::DD,b::Float64) = mod(a,convert(DD,b))
mod(a::Float64,b::DD) = mod(convert(DD,a),b)

%{T<:TD}(a::T,b::T) = a - trunc(a/b)
%(a::TD,b::Float64) = %(a,b)
%(a::Float64,b::TD) = %(a,b)

function divrem{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    temp = a/b
    d = trunc(temp)
    r = a - d*b
    d,r
end
divrem(a::DD, b::Float64) = divrem(a,convert(DD,b))
divrem(a::Float64, b::DD) = divrem(convert(DD,a),b)

function fldmod{T<:DD}(a::T,b::T)
    d = floor(a/b)
    a - d*b
    d,a
end
fldmod(a::DD, b::Float64) = fldmod(a,convert(DD,b))
fldmod(a::Float64, b::DD) = fldmod(convert(DD,a),b)

#=
   This well-behaved bounded modulo implementation is from
   The pitfalls of verifying floating-point computations
   by David Monniaux, 2008 
   http://arxiv.org/abs/cs/0701192v5
=#
function modulo{T<:DD}(a::T, lowerbound::T, upperbound::T)
    delta = upperbound - lowerbound
    a - (floor((a - lowerbound)/delta) * delta)
end
modulo(a::DD, lowerbound::Float64, upperbound::Float64) = modulo(a,convert(DD,lowerbound),convert(DD,upperbound))
modulo(a::Float64, lowerbound::DD, upperbound::DD) = modulo(convert(DD,a),lowerbound,upperbound)

