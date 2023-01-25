### Challenge:
- Claim ownership of the contract.

### Vulnerability:
- Wrong Use of `tx.origin`.

### Solution:
- To call the function `changeOwner()` we only need to pass one check, that is `(tx.origin != msg.sender)`.
The Trx originator (`tx.origin`) should not be equal to the Caller (`msg.sender`).
Let's first quickly understand the difference between these two.
If YOU call a Contract A which furthers call Contract B (YOU --> A --> B). `tx.origin` will be YOU & `msg.sender will be equal to A.

- Create a attacker contract i.e `TelephoneAttack.sol` to call `changeOwner()` with passing our own address.

### Takeaway:
- Use `tx.origin` carefully.

### Useful Resource:
[Phishing with tx.origin](https://youtu.be/mk4wDlVB4ro)