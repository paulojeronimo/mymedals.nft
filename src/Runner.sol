// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Runner {
    address public id;
    string public name;

    constructor (address _id, string memory _name) {
      id = _id;
      name = _name;
    }
}
