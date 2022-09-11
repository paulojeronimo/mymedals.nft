// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Runner.sol";

contract RunnerTest is Test {
    string constant n1 = "Pedro";
    string constant n2 = "Paulo";
    address constant a1 = address(0x1);
    address constant a2 = address(0x2);

    Runner public pedro;
    Runner public paulo;

    function setUp() public {
        pedro = new Runner(a1, n1);
        paulo = new Runner(a2, n2);
    }

    function testRunnerName() public {
        assertEq(pedro.name(), n1);
        assertEq(paulo.name(), n2);
    }
}
