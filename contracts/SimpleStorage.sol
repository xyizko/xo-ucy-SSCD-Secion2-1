// This contract is from an the last lesson with addition of some more contracts
// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;
    
    // Note the virtual kw here , this makes it overridable, also note the gas which is 10 times more now 
    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

// These are just for illustrating importing contracts
contract SimpleStorage2 {}

contract SimpleStorage3 {}

contract SimpleStorage4 {}