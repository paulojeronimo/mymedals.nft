// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/RunningRace.sol";

contract RunningRaceTest is Test {
    RunningRace sampa10k;

    function setUp() public {
        sampa10k = new RunningRace("Sampa 10 K", 0, RunningRace.Type.TenK);
    }

    function testRunningRaceType() public {
        //assertEq(sampa10k.runningType(), RunningRace.Type.TenK);
    }
}
