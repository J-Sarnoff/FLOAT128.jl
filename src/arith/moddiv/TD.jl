
@inline function mulby2(a::TD)
    TD(a.hi*2.0, a.md*2.0, a.lo*2.0)
end

@inline function divby2(a::TD)
    TD(a.hi*0.5, a.md*0.5, a.lo*0.5)
end

@inline function mulbypow2(a::TD,p::Float64)
    TD(a.hi*p, a.md*p, a.lo*p)
end

@inline function divbypow2(a::TD,p::Float64)
    fr,xp = frexp(p)
    mulbypow2(a, ldexp(fr,-xp))
end


function fld{T<:TD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    floor( a/b )
end

function cld{T<:TD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    ceil( a/b )
end


function div{T<:TD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    temp = a/b
    trunc(temp)
end
div(a::TD,b::Float64) = div(a,TD(b))
div(a::Float64,b::TD) = div(TD(a),b)

function rem{T<:TD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    a - div(a,b)*b
end

%{T<:TD}(a::T,b::T) = a - trunc(a/b)
%(a::TD,b::Float64) = %(a,b)
%(a::Float64,b::TD) = %(a,b)

function divrem{T<:TD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    temp = a/b
    d = trunc(temp)
    r = a - d*b
    d,r
end


function mod{T<:TD}(a::T,b::T)
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

mod(a::TD,b::Float64) = mod(a,convert(TD,b))
mod(a::Float64,b::TD) = mod(convert(TD,a),b)

function fldmod{T<:TD}(a::T,b::T)
    d = floor(a/b)
    a - d*b
    d,a
end
