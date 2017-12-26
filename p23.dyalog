⎕IO←0
p←⊃⎕NGET'p23.txt'1
asm←'set (\S+) (\S+)' 'sub (\S+) (\S+)' 'mul (\S+) (\S+)' 'jnz (\S+) (\S+)'
apl←'\1←\2' '\1-←\2' '\1×←\2 ⋄ n+←1' '→(0≠\1)/⎕LC+\2'
⎕FX'foo a' 'b c d e f g h n←0',  asm ⎕R apl⊢p ⋄ foo 0 ⋄ n ⍝ part 1
⎕FX'foo a' 'b c d e f g h n←0',8↑asm ⎕R apl⊢p ⋄ foo 1 ⍝ set b and c
comp←{0∊⍵|⍨2↓⍳1+⌊⍵*0.5} ⍝ composite?
+/comp¨b+17×⍳1+(c-b)÷17 ⍝ part 2
