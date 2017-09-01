-- This is free and unencumbered software released into the public domain.

--------------------------------------------------------------------------------
-- Type Definitions

-- Boolean (true or false)
function bool(x)
  return x -- TODO
end

-- Character (21-bit Unicode code point)
function char(c)
  return c -- TODO
end

-- Complex number (arbitrary size)
function complex(real_, imaginary)
  return {real(real_), real(imaginary)} -- TODO
end

-- Floating-point number (native size)
function float(r)
  return float64(r)
end

-- Floating-point number (32-bit single-precision)
function float32(r)
  return r -- TODO
end

-- Floating-point number (64-bit double-precision)
function float64(r)
  return r -- TODO
end

-- Integer number (native size)
function int(z)
  return int64(z)
end

-- Integer number (8-bit)
function int8(z)
  return z -- TODO
end

-- Integer number (16-bit)
function int16(z)
  return z -- TODO
end

-- Integer number (32-bit)
function int32(z)
  return z -- TODO
end

-- Integer number (64-bit)
function int64(z)
  return z -- TODO
end

-- Integer number (128-bit)
function int128(z)
  return int64(z) -- FIXME
end

-- Integer number (arbitrary size)
function integer(z)
  return int64(z) -- FIXME
end

-- Natural number (arbitrary size)
function natural(n)
  return integer(n)
end

-- Rational number (arbitrary size)
function rational(numerator, denominator)
  return {integer(numerator), integer(denominator)} -- TODO
end

-- Real number (arbitrary size)
function real(r)
  return float64(r) -- FIXME
end

-- Machine word (native size)
function word(n)
  return word64(n)
end

-- Machine word (8-bit)
function word8(n)
  return n -- TODO
end

-- Machine word (16-bit)
function word16(n)
  return n -- TODO
end

-- Machine word (32-bit)
function word32(n)
  return n -- TODO
end

-- Machine word (64-bit)
function word64(n)
  return n -- TODO
end

--------------------------------------------------------------------------------

--[[
print("OK") -- lua5.3 prelude.lua
--]]
