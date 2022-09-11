// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract RunningRace {
    enum Type { FiveK, TenK, HalfMarathon, Marathon, Other }

    string public name;
    uint public date;
    uint public distance;
    Type public runningType;

    constructor (string memory _name, uint _date, Type _runningType) {
      name = _name;
      date = _date;
      runningType = _runningType;
    }

    function getType() public view returns (Type _runningType) {
        if (distance == 5000)
            _runningType = Type.FiveK;
        else if (distance == 10000)
            _runningType = Type.TenK;
        else if (distance == 21097)
            _runningType = Type.HalfMarathon;
        else if (distance == 42195)
            _runningType = Type.Marathon;
        else _runningType = Type.Other;
    }
} 
