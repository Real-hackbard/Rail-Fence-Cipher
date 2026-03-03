# Rail-Fence-Cipher

</br>

![Compiler](https://github.com/user-attachments/assets/a916143d-3f1b-4e1f-b1e0-1067ef9e0401) ![10 Seattle](https://github.com/user-attachments/assets/c70b7f21-688a-4239-87c9-9a03a8ff25ab) ![10 1 Berlin](https://github.com/user-attachments/assets/bdcd48fc-9f09-4830-b82e-d38c20492362) ![10 2 Tokyo](https://github.com/user-attachments/assets/5bdb9f86-7f44-4f7e-aed2-dd08de170bd5) ![10 3 Rio](https://github.com/user-attachments/assets/e7d09817-54b6-4d71-a373-22ee179cd49c)  ![10 4 Sydney](https://github.com/user-attachments/assets/e75342ca-1e24-4a7e-8fe3-ce22f307d881) ![11 Alexandria](https://github.com/user-attachments/assets/64f150d0-286a-4edd-acab-9f77f92d68ad) ![12 Athens](https://github.com/user-attachments/assets/59700807-6abf-4e6d-9439-5dc70fc0ceca)  
![Components](https://github.com/user-attachments/assets/d6a7a7a4-f10e-4df1-9c4f-b4a1a8db7f0e) ![None](https://github.com/user-attachments/assets/30ebe930-c928-4aaf-a8e1-5f68ec1ff349)  
![Description](https://github.com/user-attachments/assets/dbf330e0-633c-4b31-a0ef-b1edb9ed5aa7) ![Rail Fence Cipher](https://github.com/user-attachments/assets/c57c449e-1ebb-414e-b265-576397440964)  
![Last Update](https://github.com/user-attachments/assets/e1d05f21-2a01-4ecf-94f3-b7bdff4d44dd) ![032026](https://github.com/user-attachments/assets/0fc2f280-2ec1-45b1-8947-57bfc6683ea0)  
![License](https://github.com/user-attachments/assets/ff71a38b-8813-4a79-8774-09a2f3893b48) ![Freeware](https://github.com/user-attachments/assets/1fea2bbf-b296-4152-badd-e1cdae115c43)  

</br>

The rail fence cipher (also called a zigzag cipher) is a [classical](https://en.wikipedia.org/wiki/Classical_cipher) type of [transposition cipher](https://en.wikipedia.org/wiki/Transposition_cipher). It derives its name from the manner in which encryption is performed, in analogy to a fence built with horizontal rails.

In the rail fence cipher, the plaintext is written downwards diagonally on successive "rails" of an imaginary fence, then moving up when the bottom rail is reached, down again when the top rail is reached, and so on until the whole plaintext is written out. The ciphertext is then read off in rows.

</br>

![Rail Fence Cipher](https://github.com/user-attachments/assets/192d4d59-645e-4415-b905-340145c38b67)

</br>

For example, to encrypt the message 'WE ARE DISCOVERED. RUN AT ONCE.' with 3 "rails", write the text as:

</br>

```pascal
W . . . E . . . C . . . R . . . U . . . O . . . 
. E . R . D . S . O . E . E . R . N . T . N . E 
. . A . . . I . . . V . . . D . . . A . . . C .
```

</br>

(Spaces and punctuation are omitted.) Then read off the text horizontally to get the ciphertext:

# Decryption  
Let ```N``` be the number of rails used during encryption. Observe that as the plaintext is written, the sequence of each letter's vertical position on the rails varies up and down in a repeating cycle. In the above example (where ```N=3```) the vertical position repeats with a period of 4. In general the sequence repeats with a period of ```2(N-1)```.

Write each string on a separate line with spaces after each letter in the first and last line:

</br>

```pascal
W   E   C   R   U   O
 E R D S O E E R N T N E
  A   I   V   D   A   C
```

</br>

Then one can read off the plaintext down the first column, diagonally up, down the next column, and so on.

if ```L``` is not a multiple of ```2(N-1)``` the determination of how to split up the ciphertext is slightly more complicated than as described above, but the basic approach is the same. Alternatively, for simplicity in decrypting, one can pad the plaintext with extra letters to make its length a multiple of ```2(N-1)```.

If the ciphertext has not been padded, but you either know or are willing to [brute-force](https://en.wikipedia.org/wiki/Brute-force_attack) the number of rails used, you can decrypt it using the following steps.

As above, let ```L``` be the length of the string to be decrypted and let  ```N``` be the number of rails used during encryption. We will add two variables, x and y , where ```x+1``` the number of diagonals in the decrypted Rail Fence, and y= the number of empty spaces in the last diagonal.

Next solve for algebraically, where both values are the smallest number possible. This is easily done by incrementing x by 1 until the denominator is larger than ```L``` and then simply solving for yConsider the example cipher, modified to use 6 rails instead of 3.

</br>

```pascal
W.........V.........O
.E.......O.E.......T.N
..A.....C...R.....A...C
...R...S.....E...N.....E
....E.I.......D.U.......
.....D.........R........
```

</br>

The resulting cipher text is:

```WVO EOETN ACRAC RSENE EIDU DR```

We know that ```L=24``` and if we use ```N=6``` we can solve the equation above.
