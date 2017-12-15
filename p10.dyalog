⎕IO←0
f←{⊃⊃{a p s←⍵ ⋄ (⌽@(256|p+⍳⍺)⊢a)(p+⍺+s)(s+1)}/(⌽⍵),⊂(⍳256)0 0}
p←⍎⊃⊃⎕NGET'p10.txt'1 ⋄ ×/2↑f p ⍝ part 1
k←{'0123456789abcdef'⌷⍨⊂,⍉16 16⊤(8/2)⊥≠/(8/2)⊤16 16⍴f∊64⍴⊂(⎕UCS ⍵),17 31 73 47 23} ⍝ knot hash, hex result
p←⊃⊃⎕NGET'p10.txt'1 ⋄ k p ⍝ part 2
