⎕IO←0
A B C D E F←⍳6
L R←¯1 1
s←6 2 3⍴1 R B,0 L C,1 L A,1 R C,1 R A,0 L D,1 L E,1 L C,1 R F,1 R A,1 R A,1 R E
f←{pos sn←⍵ ⋄ w lr ns←s[sn;tape[50000+pos];] ⋄ tape[50000+pos]←w ⋄ (pos+lr)ns}
tape←100000/0 ⋄ {}f⍣12261543⊢0 A ⋄ +/tape ⍝ part 1
