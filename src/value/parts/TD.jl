function frexp(a::TD)
    frhi, xphi = frexp(a.hi)
    frmd, xpmd = frexp(a.md)
    frlo, xplo = frexp(a.lo)
    TD(frhi, ldexp(frmd,xpmd-xphi), ldexp(frlo,xplo-xpmd-xphi)), (xphi, xpmd, xplo)
end

function ldexp(a::TD,xp::Int)
    TD(ldexp(a.hi,xp),ldexp(a.md,xp),ldexp(a.lo,xp))
end
ldexp{I<:Integer}(fx::Tuple{TD,I}) = ldexp(fx...)
