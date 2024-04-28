// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {EkuboToken} from "src/EkuboToken.sol";

contract EkuboTest is Test {
    EkuboToken public instance;

    function setUp() public {
        instance = new EkuboToken();
    }

    function testName() public view {
        assertEq(instance.name(), "Ekubo Protocol");
    }
}
