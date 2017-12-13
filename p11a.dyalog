n ne se s sw nw←0j1 1j0.5 1j¯0.5 0j¯1 ¯1j¯0.5 ¯1j0.5
p←⍎','⎕R' '⊃⊃⎕NGET'p11.txt'1
f←{a←9○⍵ ⋄ b←11○⍵ ⋄ (|a)+0⌈(|b)-0.5×|a}
f+/p ⍝ part 1
⌈/f+\p ⍝ part 2
