// This contract just add five to a number

// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// Name Import to import the relevant contract from the SimnpleStoreage.sol
import {SimpleStorage} from "./SimpleStorage.sol";


// This syntax , inherits all the functionality from SimpleStorage.sol
contract AddFiveStorage is SimpleStorage {
    // The override kw here now can override the original function in SimpleStorage.sol wiht the virual kw
    function store(uint256 _favoriteNumber) public override {
        myFavoriteNumber = _favoriteNumber + 5;
    }
}