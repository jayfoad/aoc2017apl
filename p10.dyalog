⎕IO←0
f←{n←256|pos+⍳⍵ ⋄ a[n]←⌽a[n] ⋄ pos+←⍵+skip ⋄ skip+←1}

p←⍎⊃⊃⎕NGET'p10.txt' 1
a←⍳256 ⋄ pos←0 ⋄  skip←0 ⋄ f¨p ⋄ ×/2↑a ⍝ part 1

p←(⎕UCS⊃⊃⎕NGET'p10.txt' 1),17 31 73 47 23
a←⍳256 ⋄ pos←0 ⋄  skip←0 ⋄ f¨∊64⍴⊂p
'0123456789abcdef'⌷⍨⊂,⍉16 16⊤(8/2)⊥≠/(8/2)⊤16 16⍴a ⍝ part 2
