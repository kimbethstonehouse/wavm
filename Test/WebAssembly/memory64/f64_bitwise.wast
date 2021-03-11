;; Test all the f64 bitwise operators on major boundary values and all special
;; values.

(module
  (func (export "abs") (param $x f64) (result f64) (f64.abs (local.get $x)))
  (func (export "neg") (param $x f64) (result f64) (f64.neg (local.get $x)))
  (func (export "copysign") (param $x f64) (param $y f64) (result f64) (f64.copysign (local.get $x) (local.get $y)))
)

(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const -0x0p+0)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const 0x0p+0)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const -0x0p+0)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const 0x0p+0)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const -0x1p-1022)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const 0x1p-1022)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const -0x1p-1022)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const 0x1p-1022)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const -0x1p-1)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const 0x1p-1)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const -0x1p-1)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const 0x1p-1)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const -0x1p+0)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const 0x1p+0)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const -0x1p+0)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const 0x1p+0)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const -inf)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const inf)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const -inf)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const inf)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const -nan)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0p+0) (f64.const nan)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const -nan)) (f64.const -0x0p+0))
(assert_return (invoke "copysign" (f64.const 0x0p+0) (f64.const nan)) (f64.const 0x0p+0))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0p+0)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0p+0)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0p+0)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0p+0)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1022)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1022)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1022)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1022)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p-1)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p-1)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p-1)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p-1)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1p+0)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1p+0)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1p+0)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1p+0)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const -inf)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const inf)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const -inf)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const inf)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const -nan)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x0.0000000000001p-1022) (f64.const nan)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const -nan)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const 0x0.0000000000001p-1022) (f64.const nan)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const -0x0p+0)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const 0x0p+0)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const -0x0p+0)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const 0x0p+0)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const -0x1p-1022)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const 0x1p-1022)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const -0x1p-1022)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const 0x1p-1022)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const -0x1p-1)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const 0x1p-1)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const -0x1p-1)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const 0x1p-1)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const -0x1p+0)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const 0x1p+0)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const -0x1p+0)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const 0x1p+0)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const -inf)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const inf)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const -inf)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const inf)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const -nan)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1022) (f64.const nan)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const -nan)) (f64.const -0x1p-1022))
(assert_return (invoke "copysign" (f64.const 0x1p-1022) (f64.const nan)) (f64.const 0x1p-1022))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const -0x0p+0)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const 0x0p+0)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const -0x0p+0)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const 0x0p+0)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const -0x1p-1022)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const 0x1p-1022)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const -0x1p-1022)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const 0x1p-1022)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const -0x1p-1)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const 0x1p-1)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const -0x1p-1)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const 0x1p-1)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const -0x1p+0)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const 0x1p+0)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const -0x1p+0)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const 0x1p+0)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const -inf)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const inf)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const -inf)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const inf)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const -nan)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p-1) (f64.const nan)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const -nan)) (f64.const -0x1p-1))
(assert_return (invoke "copysign" (f64.const 0x1p-1) (f64.const nan)) (f64.const 0x1p-1))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const -0x0p+0)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const 0x0p+0)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const -0x0p+0)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const 0x0p+0)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const -0x1p-1022)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const 0x1p-1022)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const -0x1p-1022)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const 0x1p-1022)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const -0x1p-1)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const 0x1p-1)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const -0x1p-1)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const 0x1p-1)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const -0x1p+0)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const 0x1p+0)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const -0x1p+0)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const 0x1p+0)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const -inf)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const inf)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const -inf)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const inf)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const -nan)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1p+0) (f64.const nan)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const -nan)) (f64.const -0x1p+0))
(assert_return (invoke "copysign" (f64.const 0x1p+0) (f64.const nan)) (f64.const 0x1p+0))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0p+0)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0p+0)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0p+0)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0p+0)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1022)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1022)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1022)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1022)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p-1)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p-1)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p-1)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p-1)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1p+0)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1p+0)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1p+0)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1p+0)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const -inf)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const inf)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const -inf)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const inf)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const -nan)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.921fb54442d18p+2) (f64.const nan)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const -nan)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const 0x1.921fb54442d18p+2) (f64.const nan)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0p+0)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0p+0)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0p+0)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0p+0)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x0.0000000000001p-1022)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x0.0000000000001p-1022)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1022)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1022)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1022)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1022)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p-1)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p-1)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p-1)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p-1)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1p+0)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1p+0)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1p+0)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1p+0)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1.921fb54442d18p+2)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const -inf)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const inf)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const -inf)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const inf)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const -nan)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -0x1.fffffffffffffp+1023) (f64.const nan)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const -nan)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const 0x1.fffffffffffffp+1023) (f64.const nan)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const -0x0p+0)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const 0x0p+0)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const -0x0p+0)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const 0x0p+0)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const -0x0.0000000000001p-1022)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const 0x0.0000000000001p-1022)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const -0x0.0000000000001p-1022)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const 0x0.0000000000001p-1022)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const -0x1p-1022)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const 0x1p-1022)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const -0x1p-1022)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const 0x1p-1022)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const -0x1p-1)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const 0x1p-1)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const -0x1p-1)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const 0x1p-1)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const -0x1p+0)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const 0x1p+0)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const -0x1p+0)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const 0x1p+0)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const -0x1.921fb54442d18p+2)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const 0x1.921fb54442d18p+2)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const -0x1.921fb54442d18p+2)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const 0x1.921fb54442d18p+2)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const 0x1.fffffffffffffp+1023)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const 0x1.fffffffffffffp+1023)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const inf)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const -inf)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const inf)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const -nan)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const -inf) (f64.const nan)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const -nan)) (f64.const -inf))
(assert_return (invoke "copysign" (f64.const inf) (f64.const nan)) (f64.const inf))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const -0x0p+0)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const 0x0p+0)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const -0x0p+0)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const 0x0p+0)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const -0x0.0000000000001p-1022)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const 0x0.0000000000001p-1022)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const -0x0.0000000000001p-1022)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const 0x0.0000000000001p-1022)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const -0x1p-1022)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const 0x1p-1022)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const -0x1p-1022)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const 0x1p-1022)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const -0x1p-1)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const 0x1p-1)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const -0x1p-1)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const 0x1p-1)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const -0x1p+0)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const 0x1p+0)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const -0x1p+0)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const 0x1p+0)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const -0x1.921fb54442d18p+2)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const 0x1.921fb54442d18p+2)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const -0x1.921fb54442d18p+2)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const 0x1.921fb54442d18p+2)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const 0x1.fffffffffffffp+1023)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const -0x1.fffffffffffffp+1023)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const 0x1.fffffffffffffp+1023)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const -inf)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const inf)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const -inf)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const inf)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const -nan)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const -nan) (f64.const nan)) (f64.const nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const -nan)) (f64.const -nan))
(assert_return (invoke "copysign" (f64.const nan) (f64.const nan)) (f64.const nan))
(assert_return (invoke "abs" (f64.const -0x0p+0)) (f64.const 0x0p+0))
(assert_return (invoke "abs" (f64.const 0x0p+0)) (f64.const 0x0p+0))
(assert_return (invoke "abs" (f64.const -0x0.0000000000001p-1022)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "abs" (f64.const 0x0.0000000000001p-1022)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "abs" (f64.const -0x1p-1022)) (f64.const 0x1p-1022))
(assert_return (invoke "abs" (f64.const 0x1p-1022)) (f64.const 0x1p-1022))
(assert_return (invoke "abs" (f64.const -0x1p-1)) (f64.const 0x1p-1))
(assert_return (invoke "abs" (f64.const 0x1p-1)) (f64.const 0x1p-1))
(assert_return (invoke "abs" (f64.const -0x1p+0)) (f64.const 0x1p+0))
(assert_return (invoke "abs" (f64.const 0x1p+0)) (f64.const 0x1p+0))
(assert_return (invoke "abs" (f64.const -0x1.921fb54442d18p+2)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "abs" (f64.const 0x1.921fb54442d18p+2)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "abs" (f64.const -0x1.fffffffffffffp+1023)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "abs" (f64.const 0x1.fffffffffffffp+1023)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "abs" (f64.const -inf)) (f64.const inf))
(assert_return (invoke "abs" (f64.const inf)) (f64.const inf))
(assert_return (invoke "abs" (f64.const -nan)) (f64.const nan))
(assert_return (invoke "abs" (f64.const nan)) (f64.const nan))
(assert_return (invoke "neg" (f64.const -0x0p+0)) (f64.const 0x0p+0))
(assert_return (invoke "neg" (f64.const 0x0p+0)) (f64.const -0x0p+0))
(assert_return (invoke "neg" (f64.const -0x0.0000000000001p-1022)) (f64.const 0x0.0000000000001p-1022))
(assert_return (invoke "neg" (f64.const 0x0.0000000000001p-1022)) (f64.const -0x0.0000000000001p-1022))
(assert_return (invoke "neg" (f64.const -0x1p-1022)) (f64.const 0x1p-1022))
(assert_return (invoke "neg" (f64.const 0x1p-1022)) (f64.const -0x1p-1022))
(assert_return (invoke "neg" (f64.const -0x1p-1)) (f64.const 0x1p-1))
(assert_return (invoke "neg" (f64.const 0x1p-1)) (f64.const -0x1p-1))
(assert_return (invoke "neg" (f64.const -0x1p+0)) (f64.const 0x1p+0))
(assert_return (invoke "neg" (f64.const 0x1p+0)) (f64.const -0x1p+0))
(assert_return (invoke "neg" (f64.const -0x1.921fb54442d18p+2)) (f64.const 0x1.921fb54442d18p+2))
(assert_return (invoke "neg" (f64.const 0x1.921fb54442d18p+2)) (f64.const -0x1.921fb54442d18p+2))
(assert_return (invoke "neg" (f64.const -0x1.fffffffffffffp+1023)) (f64.const 0x1.fffffffffffffp+1023))
(assert_return (invoke "neg" (f64.const 0x1.fffffffffffffp+1023)) (f64.const -0x1.fffffffffffffp+1023))
(assert_return (invoke "neg" (f64.const -inf)) (f64.const inf))
(assert_return (invoke "neg" (f64.const inf)) (f64.const -inf))
(assert_return (invoke "neg" (f64.const -nan)) (f64.const nan))
(assert_return (invoke "neg" (f64.const nan)) (f64.const -nan))


;; Type check

(assert_invalid (module (func (result f64) (f64.copysign (i64.const 0) (f32.const 0)))) "type mismatch")
(assert_invalid (module (func (result f64) (f64.abs (i64.const 0)))) "type mismatch")
(assert_invalid (module (func (result f64) (f64.neg (i64.const 0)))) "type mismatch")
