### Challenge:
- Unlock the vault to pass the level!

### Solution:
- getStorageAt(SLOT_2)

### Takeaway:
- `private` variables on-chain are not really private :)

### Notes:
Access storage slots using console/web3js:
```js
await web3.eth.getStorageAt(contract.address, 1) // 1 = password storage slot
```
[Web3js getStorageAt](https://web3js.readthedocs.io/en/v1.2.11/web3-eth.html#getstorageat)