⍝ Nick Psaris
n ne se s sw nw←(0 1 0)(0 .5 .5)(0 ¯.5 .5)(0 ¯1 0)(¯.5 ¯.5 0)(¯.5 .5 0)
p←↑⍎','⎕R' '⊃⊃⎕NGET'p11.txt'1
|+/,p ⍝ part 1
⌈/|+/+⍀p ⍝ part 2
