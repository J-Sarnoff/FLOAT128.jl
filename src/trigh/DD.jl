
@inline function sinhAsTD(a::DD)
  x=TD(a)
  0.5 * (exp(x) - exp(-x))
end

sinh(a::DD) = DD(sinhAsTD(a))

@inline function cosh(a::DD)
  x=TD(a)
  0.5 * (exp(x) + exp(-x))
end

cosh(a::DD) = DD(coshAsTD(a))

@inline function tanh(a::DD)
  x=TD(a)
  epx = exp(x)
  emx = exp(-x)
  (epx - emx) / (epx + emx)
end

tanh(a::DD) = sinh(a)/cosh(a) # DD(tanhAsTD(a))

@inline cschAsTD(a::DD) = recip(sinhAsTD(a))
csch(a::DD) = DD(cschAsTD(a))

@inline sechAsTD(a::DD) = recip(coshAsTD(a))
sech(a::DD) = DD(sechAsTD(a))

@inline cothAsTD(a::DD) = recip(cothAsTD(a))
coth(a::DD) = DD(cothAsTD(a))