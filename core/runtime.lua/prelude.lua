-- This is free and unencumbered software released into the public domain.

--- DRYlib for Lua
-- @module dry
local dry = {
  core = {Complex = {}, Rational = {}},
  geo  = {},
  net  = {},
  std  = {},
  sys  = {},
  time = {},
}

--------------------------------------------------------------------------------
-- Numeric Limits

local limits = {
  char    = {min = 0, max = 0x10FFFF},
  float32 = {min = nil, max = nil}, -- TODO
  int8    = {min = -0x80, max = 0x7f},
  int16   = {min = -0x8000, max = 0x7fff},
  int32   = {min = -0x80000000, max = 0x7fffffff},
  int64   = {min = -0x8000000000000000, max = 0x7fffffffffffffff},
  int128  = {min = '-0x80000000000000000000000000000000',
            max = '0x7fffffffffffffffffffffffffffffff'},
  word8   = {min = 0, max = 0xff},
  word16  = {min = 0, max = 0xffff},
  word32  = {min = 0, max = 0xffffffff},
  word64  = {min = 0, max = 0xffffffffffffffff},
}

--------------------------------------------------------------------------------
-- Helper Functions

local _assert = assert

function assert(cond, message, value)
  if cond then return cond
  else
    if type(message) == "function" then
      message = message(value)
    end
    return error(message, 2)
  end
end

function isnumber(x)
  return type(x) == "number"
end

function isfloat(x)
  return math.type(x) == "float"
end

function isinteger(x)
  return math.type(x) == "integer"
end

function tofloat(x)
  return x * 1.0
end

function tointeger(x)
  if x < 0 then return math.ceil(x) else return math.floor(x) end
end

--------------------------------------------------------------------------------
-- Error Handlers

local type_error      = function(x) return string.format("type mismatch: %q", x) end
local underflow_error = function(x) return string.format("numeric underflow: %q", x) end
local overflow_error  = function(x) return string.format("numeric overflow: %q", x) end

--------------------------------------------------------------------------------
-- Type Constructors

-- Boolean (true or false)
function dry.bool(x)
  return not not x
end

-- Character (21-bit Unicode code point)
function dry.char(c)
  if isnumber(c) then
    assert(c >= limits.char.min, underflow_error, c)
    assert(c <= limits.char.max, overflow_error, c)
    return c
  else
    return error("not implemented") -- TODO
  end
end

-- Complex number (arbitrary size)
function dry.complex(real, imaginary)
  local self = {dry.real(real), dry.real(imaginary)}
  setmetatable(self, {__index = dry.core.Complex})
  return self
end

-- Floating-point number (native size)
function dry.float(r)
  return dry.float64(r) -- Lua 5.3 defaults to 64-bit floats
end

-- Floating-point number (32-bit single-precision)
function dry.float32(r)
  assert(isnumber(r), type_error, r)
  return tofloat(r)
end

-- Floating-point number (64-bit double-precision)
function dry.float64(r)
  assert(isnumber(r), type_error, r)
  return tofloat(r)
end

-- Integer number (native size)
function dry.int(z)
  return dry.int64(z) -- Lua 5.3 defaults to 64-bit integers
end

-- Integer number (8-bit)
function dry.int8(z)
  assert(isnumber(z), type_error, z)
  assert(z >= limits.int8.min, underflow_error, z)
  assert(z <= limits.int8.max, overflow_error, z)
  return z
end

-- Integer number (16-bit)
function dry.int16(z)
  assert(isnumber(z), type_error, z)
  assert(z >= limits.int16.min, underflow_error, z)
  assert(z <= limits.int16.max, overflow_error, z)
  return z
end

-- Integer number (32-bit)
function dry.int32(z)
  assert(isnumber(z), type_error, z)
  assert(z >= limits.int32.min, underflow_error, z)
  assert(z <= limits.int32.max, overflow_error, z)
  return z
end

-- Integer number (64-bit)
function dry.int64(z)
  assert(isnumber(z), type_error, z)
  assert(z >= limits.int64.min, underflow_error, z)
  assert(z <= limits.int64.max, overflow_error, z)
  return z
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
  assert(n >= 0, "natural numbers cannot be negative: %q", n)
  return dry.integer(n)
end

-- Rational number (arbitrary size)
function dry.rational(numerator, denominator)
  local self = {dry.integer(numerator), dry.integer(denominator)}
  setmetatable(self, {__index = dry.core.Rational})
  return self
end

-- Real number (arbitrary size)
function dry.real(r)
  assert(isnumber(r), type_error, r)
  return dry.float64(r) -- FIXME
end

-- Machine word (native size)
function dry.word(n)
  return dry.word64(n) -- Lua 5.3 defaults to 64-bit integers
end

-- Machine word (8-bit)
function dry.word8(n)
  assert(isnumber(n), type_error, n)
  assert(n >= 0, underflow_error, n)
  assert(n <= limits.word8.max, overflow_error, n)
  return math.floor(n)
end

-- Machine word (16-bit)
function dry.word16(n)
  assert(isnumber(n), type_error, n)
  assert(n >= 0, underflow_error, n)
  assert(n <= limits.word16.max, overflow_error, n)
  return math.floor(n)
end

-- Machine word (32-bit)
function dry.word32(n)
  assert(isnumber(n), type_error, n)
  assert(n >= 0, underflow_error, n)
  assert(n <= limits.word32.max, overflow_error, n)
  return math.floor(n)
end

-- Machine word (64-bit)
function dry.word64(n)
  assert(isnumber(n), type_error, n)
  assert(n >= 0, underflow_error, n)
  --assert(n <= limits.word64.max, overflow_error, n) -- always succeeds in Lua 5.3
  return math.floor(n)
end

--------------------------------------------------------------------------------

--[[
print("OK") -- lua5.3 prelude.lua
--]]

return dry
