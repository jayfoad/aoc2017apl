⎕IO←0
p←⍎¨⊃⎕NGET'p5.txt'1
{n←0 ⋄ 3::n ⋄ a←p ⋄ {t←a[⍵] ⋄ n+←1 ⋄ a[⍵]+←1 ⋄ ∇⍵+t}0}0 ⍝ part 1
{n←0 ⋄ 3::n ⋄ a←p ⋄ {t←a[⍵] ⋄ n+←1 ⋄ a[⍵]+←1-2×3≤a[⍵] ⋄ ∇⍵+t}0}0 ⍝ part 2
