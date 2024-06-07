// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AlchSolv {
    // contract to call attempt() from AlchTask to fulfill (msg.sender != tx.origin) to create the event Winner.

    address target = 0x925abFeD80AD968739EE71382716732bc78F6Bd7;

    function callAttempt() public {
        (bool success,) = target.call(abi.encodeWithSignature("attempt()"));
    }
}
