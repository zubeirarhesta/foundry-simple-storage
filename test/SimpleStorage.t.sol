// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../lib/forge-std/src/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;
    uint256 public currentValue;
    uint256 public expectedValue;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    function testCurrentValue() public {
        console.log("The current value should be the same as 0");
        currentValue = simpleStorage.retrieve();
        expectedValue = 0;
        assertEq(currentValue, expectedValue);
    }

    function testUpdatedValue() public {
        console.log("Should update when we call store");
        expectedValue = 7;
        simpleStorage.store(expectedValue);
        currentValue = simpleStorage.retrieve();
        assertEq(currentValue, expectedValue);
    }
}
