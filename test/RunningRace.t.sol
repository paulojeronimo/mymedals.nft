// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/RunningRace.sol";

contract RunningRaceTest is Test {
    RunningRace sampa10k;

    function setUp() public {
        sampa10k = new RunningRace("Sampa 10 K", 0, 10_000);
    }

    function testGetType() public {
        assertEq(uint(RunningRace.Type.TenK), uint(sampa10k.getType()));
    }

    function testGetTypeByDistance() public {
        RunningRace mutableRace = new RunningRace("Mutable Race", 0, 0);

        assertEq(uint(RunningRace.Type.FiveK), uint(mutableRace.getTypeByDistance(5_000)));
        assertEq(uint(RunningRace.Type.TenK), uint(mutableRace.getTypeByDistance(10_000)));
    }
}
