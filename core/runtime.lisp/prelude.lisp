;; This is free and unencumbered software released into the public domain. */

(defpackage :dry
  (:use :cl)
  (:shadow :char :complex :float :integer :number :rational :real)
  (:export :bool :char :complex :float :float32 :float64
           :int :int8 :int16 :int32 :int64 :int128 :integer
           :natural :rational :real :word :word8 :word16 :word32 :word64
           :number))

(in-package :dry)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun nonnegativep (n) (not (< n 0)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deftype bool () '(member true false))

(deftype char () 'character)

(deftype complex () '(satisfies complexp))

(deftype float () '(or float32 float64))

(deftype float32 () 'single-float)

(deftype float64 () 'double-float)

(deftype int () 'fixnum)

(deftype int8 () '(signed-byte 8))

(deftype int16 () '(signed-byte 16))

(deftype int32 () '(signed-byte 32))

(deftype int64 () '(signed-byte 64))

(deftype int128 () '(signed-byte 128))

(deftype integer () 'signed-byte)

(deftype natural () '(and signed-byte (satisfies nonnegativep)))

(deftype rational () '(satisfies rationalp))

(deftype real () '(or rational float))

(deftype word () 'word64)

(deftype word8 () '(unsigned-byte 8))

(deftype word16 () '(unsigned-byte 16))

(deftype word32 () '(unsigned-byte 32))

(deftype word64 () '(unsigned-byte 64))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deftype number () '(or complex float integer ratio)) ; FIXME?
