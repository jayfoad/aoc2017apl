⎕IO←0
split←'\w+'⎕S'&'
p←split¨⊃⎕NGET'p7.txt'1
n←⊃¨p ⋄ w←⍎¨(1⊃¨p) ⋄ p←n∘⍳¨2↓¨p ⍝ names, weights, programs-immediately-above-them
n⊃⍨(⍳≢n)~∊p ⍝ part 1 (unique program that isn't above any other)

⍝ part 2
t←{⍵∪⍸∧/¨p∊¨⊂⍵}⍣≡⍬ ⍝ topological grade
(i z)←t{i←⊃⍺ ⋄ z←⍵[i⊃p] ⋄ 1<≢∪z:i z ⋄ (1↓⍺)∇(+/z)+@i⊢⍵}w ⍝ (idx of unbalanced disc)(total weights of sub-towers on it)
j←⍸1=+/∘.=⍨z ⍝ idx of wrong sub-tower on this disc
c←j⊃(1⌽z)-z ⍝ correction to its weight
c+(j⊃i⊃p)⊃w ⍝ corrected weight
