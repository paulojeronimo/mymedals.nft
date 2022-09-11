// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Runner.sol";

contract RunnerTest is Test {
    Runner public runner;
    address constant runnerAddr = address(0x1);

    function setUp() public {
       runner = new Runner(runnerAddr, "Pedro");
    }

    function testRunnerName() public {
        assertEq(runner.name(), "Pedro");
    }
}
