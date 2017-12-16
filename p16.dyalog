⎕IO←0
p←'[^,]+'⎕S'&'⊃⊃⎕NGET'p16.txt' 1
q←'x(\d+)/(\d+)' 'p(.)/(.)' 's(\d+)'⎕R'r←⌽@\1 \2⊢r' 'r←⌽@(∊∘''\1\2'')r' 'r←¯\1⌽r'⊢p
f←{r←⍵ ⋄ _←⍎¨q ⋄ r}
a←'abcdefghijklmnop' ⋄ f a ⍝ part 1
n←a{a≡t←f ⍺:⍵ ⋄ t∇⍵+1}1 ⋄ f⍣(n|1E9)⊢a ⍝ part 2
