sign(a::TD)    = sign(a.hi)
signbit(a::TD) = signbit(a.hi)

function ldexp(a::TD,xp::Int)
    TD(ldexp(a.hi,xp),ldexp(a.md,xp),ldexp(a.lo,xp))
end

function frexp(a::DD)
    frhi, xphi = frexp(a.hi)
    frmd, xpmd = frexp(a.md)
    frlo, xplo = frexp(a.lo)
    TD(frhi, ldexp(frmd,xpmd-xphi), ldexp(frlo,xplo-xpmd-xphi)), (xphi, xpmd, xplo)
end
