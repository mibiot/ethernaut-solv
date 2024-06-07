// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {console} from "forge-std/Test.sol";
import {Script} from "forge-std/Script.sol";

contract Lesson9Solv is Script {
    function run() external returns (bool) {
        address lessonNine = 0x33e1fD270599188BB1489a169dF1f0be08b83509;
        vm.startBroadcast();
        (bool success, bytes memory returnData) =
            lessonNine.call(abi.encodeWithSignature(("solveChallenge(uint256,string)"), getNumber(), "mibiot13"));
        vm.stopBroadcast();
        return (success);
    }

    function getNumber() public returns (uint256) {
        uint256 number = uint256(keccak256(abi.encodePacked(msg.sender, block.prevrandao, block.timestamp))) % 100000;
        return number;
    }
}
