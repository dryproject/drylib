/* This is free and unencumbered software released into the public domain. */

// Package dry provides DRYlib for Go.
package dry

////////////////////////////////////////////////////////////////////////////////
// Type Definitions

// Boolean (true or false)
type Bool = bool

// Character
type Char = rune

// Complex number (arbitrary size)
type Complex struct {
	real      Real
	imaginary Real
}

// Floating-point number (native size)
type Float = float64

// Floating-point number (32-bit single-precision)
type Float32 = float32

// Floating-point number (64-bit double-precision)
type Float64 = float64

// Integer number (native size)
type Int = int

// Integer number (8-bit)
type Int8 = int8

// Integer number (16-bit)
type Int16 = int16

// Integer number (32-bit)
type Int32 = int32

// Integer number (64-bit)
type Int64 = int64

// Integer number (128-bit)
type Int128 = Integer

// Integer number (arbitrary size)
type Integer struct {
	value int64 // FIXME
}

// Natural number (arbitrary size)
type Natural = Integer

// Rational number (arbitrary size)
type Rational struct {
	numerator   Integer
	denominator Integer
}

// Real number (arbitrary size)
type Real = struct {
	value Float64 // FIXME
}

// Machine word (native size)
type Word = uint

// Machine word (8-bit)
type Word8 = uint8

// Machine word (16-bit)
type Word16 = uint16

// Machine word (32-bit)
type Word32 = uint32

// Machine word (64-bit)
type Word64 = uint64
