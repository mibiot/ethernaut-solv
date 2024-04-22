// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level3CoinFlip} from "../src/Level3CoinFlip.sol";
import {Lev3SolvHelper} from "../src/Lev3SolvHelper.sol";
import {Script, console} from "forge-std/Script.sol";

contract Level3SolvV1 is Script {

    function run() external {

    Level3CoinFlip level3CoinFlip = Level3CoinFlip((0x8B260675E596C8cBAaDE67afCe51E178f38B58aE));

    vm.startBroadcast();

    Lev3SolvHelper lev3SolvHelper = new Lev3SolvHelper();

    lev3SolvHelper.guessFlip(level3CoinFlip);

    console.log("consecutiveWins: ", level3CoinFlip.consecutiveWins());
    
}
}