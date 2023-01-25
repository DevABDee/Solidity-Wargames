### Challenge:
1. claim ownership of the contract
2. reduce its balance to 0

### My Solution:
1. call contribute() and gets added into the contribitions list
2. send Ethers to the contract (sendTransaction()) to trigger recieve and become the new owner
3. call withdraw()

### Notes
Trigger the `receive()` from the console:
```js
await web3.eth.sendTransaction({to:contract.address, from:player, value:1000000000000})
```

[Web3js sendTransaction()](https://web3js.readthedocs.io/en/v1.2.11/web3-eth.html#sendtransaction)
