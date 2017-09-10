******
DRYlib
******

.. image:: https://img.shields.io/badge/license-Public%20Domain-blue.svg
   :alt: Project license
   :target: https://unlicense.org/

.. image:: https://img.shields.io/travis/dryproject/drylib/master.svg
   :alt: Travis CI build status
   :target: https://travis-ci.org/dryproject/drylib

|

*The polyglot programmer's standard library.*

Languages
=========

=============== ======== =======================================================
Language        Typing   Usage
=============== ======== =======================================================
`C`_            static   ``#include "drylib.h"``
`C++`_          static   ``#include "drylib.hpp"``
`Common Lisp`_  dynamic  ``(require :dry)``
`Go`_           static   ``import "github.com/dryproject/drylib.go"``
`Julia`_        dynamic  ``using DRYlib``
`Kotlin`_       static   ``import dry.*``
`Lua`_          dynamic  ``dry = require 'drylib'``
`PHP`_          dynamic  ``require_once 'drylib.php';``
`Rust`_         static   ``extern crate drylib as dry;``
=============== ======== =======================================================

.. _C:           https://github.com/dryproject/drylib.c
.. _C++:         https://github.com/dryproject/drylib.cpp
.. _Common Lisp: https://github.com/dryproject/drylib.lisp
.. _Go:          https://github.com/dryproject/drylib.go
.. _Julia:       https://github.com/dryproject/drylib.jl
.. _Kotlin:      https://github.com/dryproject/drylib.kt
.. _Lua:         https://github.com/dryproject/drylib.lua
.. _PHP:         https://github.com/dryproject/drylib.php
.. _Rust:        https://github.com/dryproject/drylib.rs

Reference
=========

Data Types
----------

``core``
^^^^^^^^

* ``bool``:     Boolean (``true`` or ``false``).
* ``char``:     Character (21-bit Unicode code point).
* ``complex``:  Complex number (arbitrary size).
* ``float``:    Floating-point number (native size).
* ``float32``:  Floating-point number (32-bit single-precision).
* ``float64``:  Floating-point number (64-bit double-precision).
* ``int``:      Integer number (native size).
* ``int8``:     Integer number (8-bit).
* ``int16``:    Integer number (16-bit).
* ``int32``:    Integer number (32-bit).
* ``int64``:    Integer number (64-bit).
* ``int128``:   Integer number (128-bit).
* ``integer``:  Integer number (arbitrary size).
* ``natural``:  Natural number (arbitrary size).
* ``rational``: Rational number (arbitrary size).
* ``real``:     Real number (arbitrary size).
* ``word``:     Machine word (native size).
* ``word8``:    Machine word (8-bit).
* ``word16``:   Machine word (16-bit).
* ``word32``:   Machine word (32-bit).
* ``word64``:   Machine word (64-bit).

Reference (experimental)
========================

``geo``
^^^^^^^

* ``location``: GPS location (latitude, longitude, altitude).

``net``
^^^^^^^

* ``port``: Port number (for TCP, UDP, etc).

``net/ipv4``
^^^^^^^^^^^^

* ``address``: IPv4 address.

``net/ipv6``
^^^^^^^^^^^^

* ``address``: IPv6 address.

``std/ietf``
^^^^^^^^^^^^

* ``iri``: Internationalized Resource Identifier (IRI).
* ``uri``: Uniform Resource Identifier (URI).
* ``url``: Uniform Resource Locator (URL).
* ``urn``: Uniform Resource Name (URN).
* ``uuid``: Universally Unique Identifier (UUID).

``std/itu``
^^^^^^^^^^^

* ``oid``: Object Identifier (OID).

``std/w3c``
^^^^^^^^^^^

* ``curie``: Compact URI (CURIE).

``time``
^^^^^^^^

* ``duration``: Time duration.
* ``instant``: Time instant.
