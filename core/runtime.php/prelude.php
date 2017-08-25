<?php
/* This is free and unencumbered software released into the public domain. */

declare(strict_types=1);

namespace dry;

if (version_compare(phpversion(), '7.0', '<')) {
  die("DRYlib for PHP requires PHP 7.0+\n");
}

////////////////////////////////////////////////////////////////////////////////

function bool($value): bool {
  return boolval($value);
}

function char(int $value): int {
  return intval($value);
}

function complex(Real $real, Real $imaginary): Complex {
  return new Complex($real, $imaginary);
}

function float(float $value): float {
  return floatval($value);
}

function float32(float $value): float {
  return floatval($value);
}

function float64(float $value): float {
  return floatval($value);
}

function int(int $value): int {
  return intval($value);
}

function int8(int $value): int {
  return intval($value);
}

function int16(int $value): int {
  return intval($value);
}

function int32(int $value): int {
  return intval($value);
}

function int64(int $value): int {
  return intval($value);
}

function int128(int $value): int {
  return intval($value);
}

function integer(int $value): Integer {
  return new Integer($value);
}

function natural(int $value): Integer {
  return integer($value);
}

function rational(Integer $numerator, Integer $denominator): Rational {
  return new Rational($numerator, $denominator);
}

function real(float $value): Real {
  return new Real($value);
}

function word(int $value): int {
  return intval($value);
}

function word8(int $value): int {
  return intval($value);
}

function word16(int $value): int {
  return intval($value);
}

function word32(int $value): int {
  return intval($value);
}

function word64(int $value): int {
  return intval($value);
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
