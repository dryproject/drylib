<?php
/* This is free and unencumbered software released into the public domain. */

declare(strict_types=1);

namespace dry;

if (version_compare(phpversion(), '7.0', '<')) {
  die("DRYlib for PHP requires PHP 7.0+\n");
}

if (PHP_INT_SIZE < 8) {
  die("DRYlib for PHP requires a 64-bit PHP runtime (CFLAGS='-m64').\n");
}

////////////////////////////////////////////////////////////////////////////////

class limits {
  const int8_min   = -0x80;
  const int8_max   =  0x7f;
  const int16_min  = -0x8000;
  const int16_max  =  0x7fff;
  const int32_min  = -0x80000000;
  const int32_max  =  0x7fffffff;
  const int64_min  = -0x8000000000000000;
  const int64_max  =  0x7fffffffffffffff;
  const int128_min = '-0x80000000000000000000000000000000';
  const int128_max =  '0x7fffffffffffffffffffffffffffffff';
}

////////////////////////////////////////////////////////////////////////////////

class UnderflowException extends \ArithmeticError {}

class OverflowException extends \ArithmeticError {}

////////////////////////////////////////////////////////////////////////////////

function bool($x): bool {
  return boolval($x);
}

function char(int $c): int {
  // TODO: check bounds.
  return intval($c);
}

function complex(Real $real, Real $imaginary): Complex {
  return new Complex($real, $imaginary);
}

function float(float $r): float {
  return $r;
}

function float32(float $r): float {
  // TODO: check bounds.
  return $r;
}

function float64(float $r): float {
  return $r;
}

function int(int $z): int {
  return $z;
}

function int8(int $z): int {
  if ($z < limits::int8_min) throw new UnderflowException();
  if ($z > limits::int8_max) throw new OverflowException();
  return $z;
}

function int16(int $z): int {
  if ($z < limits::int16_min) throw new UnderflowException();
  if ($z > limits::int16_max) throw new OverflowException();
  return $z;
}

function int32(int $z): int {
  if ($z < limits::int32_min) throw new UnderflowException();
  if ($z > limits::int32_max) throw new OverflowException();
  return $z;
}

function int64(int $z): int {
  if ($z < limits::int64_min) throw new UnderflowException();
  if ($z > limits::int64_max) throw new OverflowException();
  return $z;
}

function int128($x): int {
  return intval($x); // TODO
}

function integer(int $z): Integer {
  return new Integer($z);
}

function natural(int $n): Integer {
  if ($z < 0) throw new UnderflowException();
  return integer($n);
}

function rational(Integer $numerator, Integer $denominator): Rational {
  return new Rational($numerator, $denominator);
}

function real(float $r): Real {
  return new Real($r);
}

function word(int $n): int {
  return word64($n);
}

function word8(int $n): int {
  if ($n < 0) throw new UnderflowException();
  if ($n > 0xff) throw new OverflowException();
  return $n;
}

function word16(int $n): int {
  if ($n < 0) throw new UnderflowException();
  if ($n > 0xffff) throw new OverflowException();
  return $n;
}

function word32(int $n): int {
  if ($n < 0) throw new UnderflowException();
  if ($n > 0xffffffff) throw new OverflowException();
  return $n;
}

function word64(int $n): int {
  if ($n < 0) throw new UnderflowException();
  if ($n > 0xffffffffffffffff) throw new OverflowException(); // FIXME?
  return $n;
}

////////////////////////////////////////////////////////////////////////////////

interface Value {}

////////////////////////////////////////////////////////////////////////////////

interface Number extends Value {}

////////////////////////////////////////////////////////////////////////////////

class Integer implements Number {
  public $value;

  function __construct(int $value) {
    $this->value = $value;
  }
}

////////////////////////////////////////////////////////////////////////////////

class Rational implements Number {
  public $numerator;
  public $denominator;

  function __construct(Integer $numerator, Integer $denominator) {
    $this->numerator = $numerator;
    $this->denominator = $denominator;
  }
}

////////////////////////////////////////////////////////////////////////////////

class Real implements Number {
  public $value;

  function __construct(float $value) {
    $this->value = $value;
  }
}

////////////////////////////////////////////////////////////////////////////////

class Complex implements Number {
  public $real;
  public $imaginary;

  function __construct(Real $real, Real $imaginary) {
    $this->real = $real;
    $this->imaginary = $imaginary;
  }
}
