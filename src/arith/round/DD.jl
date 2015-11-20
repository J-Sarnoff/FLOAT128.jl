
for (fn) in (:floor, :ceil, :round)
  @eval begin
    function ($fn)(a::DD)
        hi = ($fn)(a.hi)
        lo = 0.0
        if (hi == a.hi)
            lo = ($fn)(a.lo)
            hi,lo = eftSum2inOrder(hi,lo)
        end
        DD(hi,lo)
  end        
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
