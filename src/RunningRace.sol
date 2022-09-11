// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract RunningRace {
    enum Type { FiveK, TenK, HalfMarathon, Marathon, Other }

    string public name;
    uint public date;
    uint public distance;
    Type public runningType;

    constructor (string memory _name, uint _date, uint _distance) {
      name = _name;
      date = _date;
      distance = _distance;
      runningType = getTypeByDistance(_distance);
    }

    function getTypeByDistance(uint _distance) public pure returns (Type) {
        Type _runningType = Type.Other;
        if (_distance == 5000)
            _runningType = Type.FiveK;
        else if (_distance == 10000)
            _runningType = Type.TenK;
        else if (_distance == 21000 || _distance == 21097)
            _runningType = Type.HalfMarathon;
        else if (_distance == 42000 || _distance == 42195)
            _runningType = Type.Marathon;
        return _runningType;
    }

    function getType() public view returns (Type) {
        return getTypeByDistance(distance);
    }
} 
