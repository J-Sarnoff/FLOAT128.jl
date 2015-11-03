@inline function eftSquare(a::FloatingPoint)
    x = a * a
    y = fma(a, a, -x)
    x,y
end

function eftCube(a::FloatingPoint)
    p = a*a; e = fma(a, a, -p)
    x = p*a; p = fma(p, a, -x)
    y = e*a
    x,y
end

# !!sassafrass!!
# presently 'y' must be negated to get the right result
# I do not know why.
#
@inline function eftRecip(a::FloatingPoint)
     x = one(Float64)/a
     y = fma(x,a,-1.0)/a
     x,-y
end

#=
   While not strictly an error-free transformation it is quite reliable and recommended for use.
   Augmented precision square roots, 2-D norms and discussion on correctly reounding sqrt(x^2 + y^2)
   by Nicolas Brisebarre, Mioara Joldes, Erik Martin-Dorel, Hean-Michel Muller, Peter Kornerup
=#
@inline function eftSqrt(a::FloatingPoint)
     x = sqrt(a)
     t = fma(x,-x,a)
     y = t / (x*2.0)
     x,y
end     
     
@inline function eftRecipSqrt(a::FloatingPoint)
     r = 1.0/a
     x = sqrt(r)
     t = fma(x,-x,r)
     y = t / (x*2.0)
     x,y
end     
