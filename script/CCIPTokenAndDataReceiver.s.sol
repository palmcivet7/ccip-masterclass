// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/Script.sol";
import {CCIPTokenAndDataReceiver} from "../src/CCIPTokenAndDataReceiver.sol";

contract DeployCCIPTokenAndDataReceiver is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        address sepoliaRouter = 0xD0daae2231E9CB96b94C8512223533293C3693Bf;

        CCIPTokenAndDataReceiver sender = new CCIPTokenAndDataReceiver(
            sepoliaRouter,
            100
        );

        console.log("CCIPTokenAndDataReceiver deployed to ", address(sender));

        vm.stopBroadcast();
    }
}
