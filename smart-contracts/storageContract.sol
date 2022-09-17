//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./contractOne.sol";

contract StorageFactory {
    FirstSmart public importContract;

    function deployingContra () public {
        importContract = new FirstSmart();
    }
}
