// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract MyScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("GOERLI_PRIVATE_KEY_TEST");
        vm.startBroadcast(deployerPrivateKey);

        Counter test = new Counter();

        vm.stopBroadcast();
    }
}
