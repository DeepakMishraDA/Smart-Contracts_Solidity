////SPDX-License-Identifier: None
pragma solidity ^0.8.8;

import './SimpleStorage.sol';

contract ExtraSimpleStorage is SimpleStorage {

        function store (uint256 favNo) public override {
            favNum = favNo + 49;
        }

        function extraFunc(string memory namePara) public pure returns (string memory) { 
            return namePara;
        }
}
