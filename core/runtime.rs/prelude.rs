/* This is free and unencumbered software released into the public domain. */

////////////////////////////////////////////////////////////////////////////////
// Type Definitions

// Boolean (true or false)
type Bool = bool;

// Character
type Char = char;

// Complex number (arbitrary size)
struct Complex {
  real:      Real,
  imaginary: Real,
}

// Floating-point number (native size)
type Float = Float64;

// Floating-point number (32-bit single-precision)
type Float32 = f32;

// Floating-point number (64-bit double-precision)
type Float64 = f64;

// Integer number (native size)
type Int = isize;

// Integer number (8-bit)
type Int8 = i8;

// Integer number (16-bit)
type Int16 = i16;

// Integer number (32-bit)
type Int32 = i32;

// Integer number (64-bit)
type Int64 = i64;

// Integer number (128-bit)
type Int128 = Integer;

// Integer number (arbitrary size)
struct Integer {
  value: Int64 // FIXME
}

// Natural number (arbitrary size)
type Natural = Integer;

// Rational number (arbitrary size)
struct Rational {
  numerator:   Integer,
  denominator: Integer,
}

// Real number (arbitrary size)
struct Real {
  value: Float64 // FIXME
}

// Machine word (native size)
type Word = usize;

// Machine word (8-bit)
type Word8 = u8;

// Machine word (16-bit)
type Word16 = u16;

// Machine word (32-bit)
type Word32 = u32;

// Machine word (64-bit)
type Word64 = u64;

fn main() {} // rustc -A dead_code prelude.rs
