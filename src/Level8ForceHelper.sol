    // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Sender {
    constructor() payable {}

    function destroyAndSend(address payable _to) public {
        selfdestruct(_to);
    }
}
