⍝ Cube coordinates (https://www.redblobgames.com/grids/hexagons/#coordinates)
n se sw s nw ne←(⊢,-)0 1 2⌽¨⊂¯1 0 1
p←↑⍎','⎕R' '⊃⊃⎕NGET'p11.txt'1
⌈/|+⌿p ⍝ part 1
⌈/,|+⍀p ⍝ part 2
