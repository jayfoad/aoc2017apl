⎕IO←1
p←⍎⊃⊃⎕NGET'p3.txt'1
⍝ NB in the heat of the moment I didn't write anything like this. I used ulam
⍝ from http://dfns.dyalog.com/s_dft.htm to generate a 1000x1000 spiral and then
⍝ massaged it by hand.
{p∊⍵:+/|⊃-/⍸⍵∊1 p ⋄ ∇⍉⌽((⊃⍵)+⍳⊃⌽⍴⍵)⍪⍵}1 1⍴1 ⍝ part 1
{p<⌈/,⍵:⌊/(p<,⍵)/,⍵ ⋄ ∇⍉⌽(+\3+/0,(1⌷⍵),0)⍪⍵}1 1⍴1 ⍝ part 2
