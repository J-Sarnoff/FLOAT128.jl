#=
"Accurate summation, dot product and polynomial evaluation in complex floating point arithmetic"
by Stef Graillat, Valérie Ménissier-Morain, Information and Computation 216 (2012) 57–71
=#


function eftSumCplx2{T<:Complex}(x::T, y::T)
    re1, re2 = eftSum2(x.re, y.re)
    im1, im2 = eftSum2(x.im, y.im)
    T(re1, im1), T(re2, im2)
end

function eftProdCmplx2{T<:Complex}(x::T, y::T)
    z1, h1 = eftProd2(x.re, y.re)
    z2, h2 = eftProd2(x.im, y.im)
    z3, h3 = eftProd2(x.re, y.im)
    z4, h4 = eftProd2(x.im, y.re)
    z5, h5 = eftSum2(z1, -z2)
    z6, h6 = eftSum2(z3,  z4)
    p = T(z5,z6)
    e = T(h1,h3)
    f = T(-h2,h4)
    g = T(h5,h6)
    p, e, f, g
end
