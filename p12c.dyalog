⎕IO←0
p←⍎¨'<->'⎕R''⊃⎕NGET'p12.txt'1
m←↓{⍵∨⍵∨.∧⍵}⍣≡↑(⍳≢p)∘∊¨p
+/⊃m ⍝ part 1
≢∪m ⍝ part 2
