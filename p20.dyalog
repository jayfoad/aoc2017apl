⎕IO←0
p←⍎¨↑'-?\d+'⎕S'&'¨⊃⎕NGET'p20.txt'1
(⊢⍳⌊/)+/|0 6↓p ⍝ part 1
s←{(⊂⍋⍵)⌷⍵} ⍝ sort
d←{m←∧/2=⌿0 ¯6↓⍵ ⋄ ⍵⌿⍨~(0,m)∨(m,0)} ⍝ de-dup
n←{z←⍵ ⋄ (0 3↓0 ¯3↓z)+←0 6↓z ⋄ (0 ¯6↓z)+←0 3↓0 ¯3↓z ⋄ z} ⍝ next iteration
f←{1∊≢∘∪¨↓⍉3 3⍴⍋¨↓⍉⍵} ⍝ finished?
≢n∘d∘s⍣f⊢p ⍝ part 2
