function frexp(a::DD)
    frhi, xphi = frexp(a.hi)
    frlo, xplo = frexp(a.lo)
    DD(frhi, ldexp(frlo,xplo-xphi)), xphi
end

function ldexp(a::DD,xp::Int)
    DD(ldexp(a.hi,xp),ldexp(a.lo,xp))
end
ldexp{I<:Integer}(fx::Tuple{DD,I}) = ldexp(fx...)
