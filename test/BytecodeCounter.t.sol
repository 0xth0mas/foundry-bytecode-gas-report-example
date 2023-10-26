// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {BytecodeCounter} from "../src/BytecodeCounter.sol";

contract BytecodeCounterTest is Test {
    BytecodeCounter public counter;

    function setUp() public {
        counter = new BytecodeCounter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
