# This is free and unencumbered software released into the public domain.

################################################################################
# Type Definitions

# Boolean (true or false)
const Bool = Core.Bool

# Character (Unicode code point)
const Char = Core.Char

# Complex number (arbitrary size)
const Complex = Base.Complex{Base.MPFR.BigFloat}

# Floating-point number (native size)
const Float = Core.Float64

# Floating-point number (32-bit single-precision)
const Float32 = Core.Float32

# Floating-point number (64-bit double-precision)
const Float64 = Core.Float64

# Integer number (native size)
const Int = if (Core.Int === Core.Int64) Core.Int64 else Core.Int32 end

# Integer number (8-bit)
const Int8 = Core.Int8

# Integer number (16-bit)
const Int16 = Core.Int16

# Integer number (32-bit)
const Int32 = Core.Int32

# Integer number (64-bit)
const Int64 = Core.Int64

# Integer number (128-bit)
const Int128 = Core.Int128

# Integer number (arbitrary size)
const Integer = Base.GMP.BigInt

# Natural number (arbitrary size)
const Natural = Integer

# Rational number (arbitrary size)
const Rational = Base.Rational{Base.GMP.BigInt}

# Real number (arbitrary size)
const Real = Base.MPFR.BigFloat

# Machine word (native size)
const Word = if (Core.UInt === Core.UInt64) Core.UInt64 else Core.UInt32 end

# Machine word (8-bit)
const Word8 = Core.UInt8

# Machine word (16-bit)
const Word16 = Core.UInt16

# Machine word (32-bit)
const Word32 = Core.UInt32

# Machine word (64-bit)
const Word64 = Core.UInt64

# Machine word (128-bit)
const Word128 = Core.UInt128

#println("OK") # julia prelude.jl
