### Challenge:
- Hack the basic token contract. 
- Get your hands on any additional tokens.

### Vulnerability:
- Arthematic Overflow/Underflow (Solidity vulnerability prior to 0.8.x versions).

### Solution:
- The `transfer()` function is vulnerable to integer overflow attack.
If we input any amount more than 20, we can trigger the overflow.
`transfer()` 21 tokens, it will change our balance to `115792089237316195423570985008687907853269984665640564039457584007913129639935` :)

### Takeaway:
- Use Solidity 0.8.x versions, as 0.8.x checks and make sure to revert on overflow/underflows.

### Useful Resource:
[Arithmetic Overflow and Underflow](https://youtu.be/zqHb-ipbmIo)