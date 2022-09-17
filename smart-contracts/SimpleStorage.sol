//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public varOne = 5;
    
    //array,struct,mapping
    struct People {
        uint256 favouriteNumber;
        string name;
    }
    //People public krshn = People({favouriteNumber:11, name: "vasu"});
    function  store(uint256 ff) public {
        varOne = ff;
    }

    People[] public person;
    mapping(uint256 => string) public favNum;
    //calldata,memory,storage
    function addPerson(uint256  _favouriteNumber, string memory _name) public {
          //man memory firstMan = man({age:_age, name:_name});
          person.push(People(_favouriteNumber,_name));
          favNum[_favouriteNumber] = _name;
    }
     function  retrieve() public view returns(uint256) {
        //varOne = ff;
        return varOne;
    }
}
