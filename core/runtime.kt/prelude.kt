/* This is free and unencumbered software released into the public domain. */

package dry

////////////////////////////////////////////////////////////////////////////////
// Type Definitions

// Boolean (true or false)
typealias Bool = kotlin.Boolean

// Character (Unicode code point)
typealias Char = kotlin.Char // FIXME: this is only 16-bit

// Complex number (arbitrary size)
data class Complex(val real: Real, val imaginary: Real)

// Floating-point number (native size)
typealias Float = kotlin.Double

// Floating-point number (32-bit single-precision)
typealias Float32 = kotlin.Float

// Floating-point number (64-bit double-precision)
typealias Float64 = kotlin.Double

// Integer number (native size)
typealias Int = kotlin.Int

// Integer number (8-bit)
typealias Int8 = kotlin.Int

// Integer number (16-bit)
typealias Int16 = kotlin.Int

// Integer number (32-bit)
typealias Int32 = kotlin.Int

// Integer number (64-bit)
typealias Int64 = kotlin.Long

// Integer number (128-bit)
typealias Int128 = kotlin.Long // FIXME

// Integer number (arbitrary size)
typealias Integer = java.math.BigInteger

// Natural number (arbitrary size)
typealias Natural = Integer

// Rational number (arbitrary size)
data class Rational(val numerator: Integer, val denominator: Integer)

// Real number (arbitrary size)
typealias Real = java.math.BigDecimal

// Machine word (native size)
typealias Word = kotlin.Long

// Machine word (8-bit)
typealias Word8 = kotlin.Long

// Machine word (16-bit)
typealias Word16 = kotlin.Long

// Machine word (32-bit)
typealias Word32 = kotlin.Long

// Machine word (64-bit)
typealias Word64 = kotlin.Long

////////////////////////////////////////////////////////////////////////////////

//println("OK") // kotlinc -script prelude.kts
