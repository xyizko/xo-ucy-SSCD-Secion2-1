// This contract just add five to a number

// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// Name Import to import the relevant contract from the SimnpleStoreage.sol
import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        myFavoriteNumber = _favoriteNumber + 5;
    }
}