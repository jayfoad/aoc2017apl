⎕IO←0
p←⍎⊃⊃⎕NGET'p6.txt'1
f←{p←⍵⋄i←⊃⍒p⋄n←p[i]⋄p[i]←0⋄p[(≢p)|i+1+⍳n]+←1⋄p}
⍬{(⊂⍵)∊⍺:≢⍺⋄(⍺,⊂⍵)∇f ⍵}p ⍝ part 1
⍬{(⊂⍵)∊⍺:(≢⍺)-⍺⍳⊂⍵⋄(⍺,⊂⍵)∇f ⍵}p ⍝ part 2
