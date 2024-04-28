// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {EkuboToken} from "src/EkuboToken.sol";

contract EkuboTokenScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        EkuboToken instance = new EkuboToken();
        console.log("Contract deployed to %s", address(instance));
        vm.stopBroadcast();
    }
}
