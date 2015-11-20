# FLOAT128.jl  
##### (a *working* work in progress)
######Float128 evalutes arithmetic ops with 106 (elementary functions with 102) bit accuracy, with reasonable values.
    Float128 evaluation compares favorably with BigFloat(128). Using Benchmarks.jl to measure relative speed, this is faster: addition and subtraction are much faster (>>10x), multiplication and division are ~2x without on chip fma (fused multiply add) and considerably faster when fma opcodes are used.  
    
    
    


### exports 

type Float128

    convert from Float64|32|16, Int128|64|32|16, BigFloat
    
    convert to BigFloat, convert to nearest Float64|32|16 Int128|64|32|16
    
    ldexp, frexp, abs, sign, signbit, trunc, floor, ceil, round, 
    
    ==, !=, <, <=, >=, >, isless, isequal
    
    +, -, *, /, %, mod, rem, div, fld, cld, divrem, fldmod
    
    sqrt, exp, log, ^
    
    sin, cos, tan, csc, sec, cot, asin, acos, atan, acsc, asec, acot
    
    sinh, cosh, tanh, csch, sech, coth, asinh, acosh, atanh, acsch, asech, acoth 
    
    string, show, showcompact
    
dict Float128s{Symbol, Float128}

    :zero, :one, :two, :three, :four, :sqrt2, :log2, :log10, :exp1, :pi, :twopi
    
    reciprocals :half, :quarter, :_sqrt2, :_log2, :_log10, :_exp1, :_pi, :_twopi
    
    add your own by converting from parsed BigFloat values
    
clean(x::Float128)

    zeros the low order part when it approaches eps(eps(high order part))

### Use

