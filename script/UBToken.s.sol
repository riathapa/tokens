// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {UBToken} from "../src/UBToken.sol";
import {Script} from "forge-std/Script.sol";

contract UBTokenDeploy is Script {
    function run() public {
        uint256 initialSupply = 1_000_000 * 10 ** 18;
        vm.startBroadcast();

        UBToken ubToken = new UBToken(initialSupply);

        ubToken.transfer(0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc, 100 * 10 ** 18);
        vm.stopBroadcast();
    }
}