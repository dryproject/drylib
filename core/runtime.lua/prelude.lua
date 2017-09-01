-- This is free and unencumbered software released into the public domain.

--- DRYlib for Lua
-- @module dry
local dry = {
  geo  = {},
  net  = {},
  std  = {},
  sys  = {},
  time = {},
}

--------------------------------------------------------------------------------
-- Type Constructors

-- Boolean (true or false)
function dry.bool(x)
  return x -- TODO
end

-- Character (21-bit Unicode code point)
function dry.char(c)
  return c -- TODO
end

-- Complex number (arbitrary size)
function dry.complex(real, imaginary)
  return {dry.real(real), dry.real(imaginary)} -- TODO
end

-- Floating-point number (native size)
function dry.float(r)
  return dry.float64(r)
end

-- Floating-point number (32-bit single-precision)
function dry.float32(r)
  return r -- TODO
end

-- Floating-point number (64-bit double-precision)
function dry.float64(r)
  return r -- TODO
end

-- Integer number (native size)
function dry.int(z)
  return dry.int64(z)
end

-- Integer number (8-bit)
function dry.int8(z)
  return z -- TODO
end

-- Integer number (16-bit)
function dry.int16(z)
  return z -- TODO
end

-- Integer number (32-bit)
function dry.int32(z)
  return z -- TODO
end

-- Integer number (64-bit)
function dry.int64(z)
  return z -- TODO
end

-- Integer number (128-bit)
function dry.int128(z)
  return dry.int64(z) -- FIXME
end

-- Integer number (arbitrary size)
function dry.integer(z)
  return dry.int64(z) -- FIXME
end

-- Natural number (arbitrary size)
function dry.natural(n)
  return dry.integer(n) -- TODO
end

-- Rational number (arbitrary size)
function dry.rational(numerator, denominator)
  return {dry.integer(numerator), dry.integer(denominator)} -- TODO
end

-- Real number (arbitrary size)
function dry.real(r)
  return dry.float64(r) -- FIXME
end

-- Machine word (native size)
function dry.word(n)
  return dry.word64(n)
end

-- Machine word (8-bit)
function dry.word8(n)
  return n -- TODO
end

-- Machine word (16-bit)
function dry.word16(n)
  return n -- TODO
end

-- Machine word (32-bit)
function dry.word32(n)
  return n -- TODO
end

-- Machine word (64-bit)
function dry.word64(n)
  return n -- TODO
end

--------------------------------------------------------------------------------

--[[
print("OK") -- lua5.3 prelude.lua
--]]

return dry
