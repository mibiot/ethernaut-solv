// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level0} from "../src/Level0.sol";
import {Script, console} from "forge-std/Script.sol";

contract Level0Solv is Script {
    Level0 public level0 = Level0(0x699AdB9B9577c3644779080b77820a9b7BDeAdc0);

    function run() external {
        string memory password = level0.password();
        console.log("Password: ", password);
        vm.startBroadcast();
        level0.authenticate(password);
        vm.stopBroadcast();
    }
}
