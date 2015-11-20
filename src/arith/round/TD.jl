
for (fn) in (:floor, :ceil, :round)
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
