"""
 (a,b) ↦ (x,y)\\
x⊕y ≖ a⊕b and x⊕y≖x
"""
@inline function eftSum2{T<:Float64}(a::T, b::T)
  x = a + b
  t = x - a
  y = (a - (x - t)) + (b - t)
  x,y
end

"""
 (a,b) ↦ (x,y)\\
x⊕y ≖ a⊕b and x⊕y≖x\\
 *presumes* |a| ≥ |b|
"""
@inline function eftSum2inOrder{T<:Float64}(a::T, b::T)
  x = a + b
  y = b - (x - a)
  x,y
end

"""
 (a,b) ↦ (x,y)\\
x⊕y ≖ a⊝b and x⊕y≖x
"""
@inline function eftDiff2{T<:Float64}(a::T, b::T)
  x = a - b
  t = x - a
  y = (a - (x - t)) - (b + t)
  x,y
end

"""
 (a,b) ↦ (x,y)\\
x⊕y ≖ a⊝b and x⊕y≖x\\
*presumes* |a| ≥ |b|
"""
@inline function eftDiff2inOrder{T<:Float64}(a::T, b::T)
  x = a - b
  y = (a - x) - b
  x,y
end

@inline function eftProd2{T<:Float64}(a::T, b::T)
    x = a * b
    y = fma(a, b, -x)
    x,y
end

# !!sassafrass!!
# presently 'y' must be negated to get the right result
# I do not know why.

@inline function eftDiv2{T<:Float64}(a::T,b::T)
     x = a/b
     y = fma(x,b,-a)/b
     x,-y
end
