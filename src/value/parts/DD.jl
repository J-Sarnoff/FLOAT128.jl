sign(a::DD)    = sign(a.hi)
signbit(a::DD) = signbit(a.hi)

function ldexp(a::DD,xp::Int)
    DD(ldexp(a.hi,xp),ldexp(a.lo,xp))
end

function frexp(a::DD)
    frhi, xphi = frexp(a.hi)
    frlo, xplo = frexp(a.lo)
    DD(frhi, ldexp(frlo,xplo-xphi)), xphi
end
