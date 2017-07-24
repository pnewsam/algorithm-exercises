HTML5 default is UTF-8

Character encoding for early web was ASCII 

# ASCII
* 'American Standard Code for Information Interchange'
* Each character is a unique, binary, 7-bits number
* In total, each character takes up ***1 byte (8 bits)*** - the last bit is used for 'parity control'
* _Biggest weakness_: doesn't accommodate non-Englsh characters
* Still in widespread use, especially in large mainframe computer systems
* Encodes 128 characters

### Aside: What is a parity bit?
* It's a simple form of error-checking
* An _even-parity bit_ ensures that the total # of 1s in a set is even (if odd, the even-parity bit is a 1, otherwise it's a 0)
* An _odd-parity bit_ is the opposite

# Unicode UTF-8

* 'Unicode Transformation Format'
* Each character is ***1 to 4 bytes*** long
* Can represent every character in the Unicode standard (almost all characters, punctuation, and symbols in the world)
* Is backwards-compatible with ASCII

### Aside: Unicode
* Unicode is a list of characters with unique decimal numbers (eg. A = 65, B = 66)