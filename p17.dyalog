⎕IO←0
p←⍎⊃⊃⎕NGET'p17.txt'1
1⊃⊃{⍺,(1+p)⌽⍵}/⌽⍳1+2017 ⍝ part 1
z←0 ⋄ {z,←1+⍵|p+⊃⌽z}¨1+⍳50E6 ⋄ 50E6-(⌽z)⍳1 ⍝ part 2
