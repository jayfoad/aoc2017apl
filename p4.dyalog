split←'\w+'⎕S'&'
p←split¨⊃⎕NGET'p4.txt'1
uniq←⊢≡∪
+/uniq¨p ⍝ part 1
+/uniq¨{⍵[⍋⍵]}¨¨p ⍝ part 2
