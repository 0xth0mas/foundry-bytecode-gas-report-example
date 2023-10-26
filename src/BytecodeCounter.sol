// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract BytecodeCounter {

    constructor() {
        assembly {
            mstore(0x3E, 0xFD5B595460010159555959F35B60043559555959F35B59595459525990F3)
            mstore(0x20, 0x8063D09DE08A1460415780633FB5C1CB14604C5780638381F58A146055575959)
            mstore(0x00, 0x59351559341117600D57601A565B5959FD5B6000526004601CFD5B593560E01C)
            return(0x00, 0x5E)
        }
    }
    
    function number() public view returns(uint256) { }
    function setNumber(uint256 newNumber) public {  }
    function increment() public {  }
}