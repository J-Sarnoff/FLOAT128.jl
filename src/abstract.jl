
abstract EnhancedFloat          <: Real             # In theory, AbstractFloat would be used instead of Real.
                                                    # In practice, AbstractFloat is tightly managed by Julia,
                                                    #    which makes it unsuitable for use as a supertype.
                                                    # The purpose of EnhancedFloat is to Top an abstract
                                                    #    type sublattice alongside AbstractFloat.  This
                                                    #    is clean way to let concrete subtypes of AbstractFloat
                                                    #    partially parameterize subsubtypes of EnhancedFloat.

abstract ExtendedFloat          <: EnhancedFloat    # For Muticonstituent floating point representations,
                                                    #    e.g. double-double and triple-double values.
                                                    # This abstract supertype is part of the abstract type
                                                    #    sublattice used with extended precision arithmetics.
                                                    #
                                                    # plausible parameter A
                                                    # A ≝ arithmetic Accuracy (bits) >=  A*32 - floor(A*13/16)
                                                    # A of (1,2,4,8) --> Accuracy >= (32,63,125,250) bits
                                                    #
                                                    # Float32 is considered to be Float32 <: ExtendedFloat{1}
                                                    # Float64 is considered to be Float64 <: ExtendedFloat{2}.

abstract MetastableFloat{T,A}   <: ExtendedFloat    # For stateful floats; each attainable finite value
                                                    #     can persist in either one of two (maybe more)
                                                    #     distinct states.  States are independant of
                                                    #     floating point value.  The state in which a
                                                    #     stateful float exists may be changed to (one of)
                                                    #     the other state(s).  
                                                    # 
                                                    #     [ With all immutable types, the change of state or
                                                    #       other alteration of value generates new instance. ]
                                                    #     
                                                    # T ≝ the underlying float type that is become stateful.
                                                    #     This is either a system provided Float or an
                                                    #     available realization of ExtendedFloat.
                                                    #
                                                    # A practical example of a MetastableFloat
                                                    #      MaybeInexact{Float64} is bulit by reencoding Float64
                                                    #      in a way that frees one bit to be the "inexact bit":
                                                    #      when set, it indicates inexactness; when zeroed,
                                                    #      it indicate exactness.  
                                                    #
                                                    # Using a multifield type with one field holding the state:
                                                    #      as an enum, index or symbol, is appropriate when
                                                    #      there are more than two possible states.

abstract StructuredFloat{T,D}   <: EnhancedFloat    # e.g. interval, nD point, bounding simplex
                                                    #
                                                    #      T is the working floating point type
                                                    #      N is the dimensionality represented
                                                    #
                                                    #      there is a charaterizing count (interval has 2 elements)
                                                    #      and a dimensional count (3D interval has 3 of 2 elements)
                                                    #      a 1D interval has ((1+1)    ) x 1 = 2 of 1 as x     element  
                                                    #      a 2D interval has ((2+1)    ) x 1 = 3 of 1 as x,y   element
                                                    #         ( two 1D intervals, perpendicular in 2D, meeting in 2D, )
                                                    #         (   providing three corners of bounding box             )
                                                    #      a 2D simplex  has ((2+1) * 1) x 2 = 3 of 2 as x,y   elements
                                                    #         ( the verticies of a planar triangle )
                                                    #      a 3D simplex  has ((3+1) * 1) x 3 = 4 of 3 as x,y,z elements
                                                    #         ( the verticies of a spatial tetrahedron )
                                                    

#=
     A floating point interval with stateful boundries, uses Float64:
     
    
            
=#
