⎕IO←0
p←↑⍎¨'/'⎕R' '⊃⎕NGET'p24.txt'1
f←{0=≢m←⍸∨/⍺=⍵:(+/,p)-+/,⍵ ⋄ ⌈/⍺{(|⍺-+/0⌷⍵) f 1↓⍵}¨m⊖¨⊂⍵} ⋄ 0 f p ⍝ part 1
f←{0=≢m←⍸∨/⍺=⍵:≢⍵ ⋄ ⌊/⍺{(|⍺-+/0⌷⍵) f 1↓⍵}¨m⊖¨⊂⍵} ⋄ len←0 f p
f←{0=≢m←⍸∨/⍺=⍵:((len=≢⍵)×+/,p)-+/,⍵ ⋄ ⌈/⍺{(|⍺-+/0⌷⍵) f 1↓⍵}¨m⊖¨⊂⍵} ⋄ 0 f p ⍝ part 2