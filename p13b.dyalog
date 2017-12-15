⎕IO←0
(d r)←↓⍉↑⍎¨':'⎕R''⊃⎕NGET'p13.txt'1
rr←2×r-1
+/r×d×0=rr|d ⍝ part 1
n←∧/rr ⋄ 0⍳⍨⊃∨/d{⍺⌽n⍴⍵↑1}¨rr ⍝ part 2
