p←⊃⎕NGET'p8.txt'1
split←'\w+'⎕S'&'
r←∪⊃¨split¨p ⍝ registers
q←'inc' 'dec' 'if' '==' '!=' '<=' '>='⎕R'+←' '-←' '×' '=' '≠' '≤' '≥'⊢p
⍎¨r,¨⊂'←0' ⋄ ⍎¨q ⋄ ⌈/⍎¨r ⍝ part 1
q←'^\w+'⎕R'z⌈←&⊣&'⊢q
⍎¨r,¨⊂'←0' ⋄ z←0 ⋄ ⍎¨q ⋄ z ⍝ part 2
