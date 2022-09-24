//SPDX-License-Identifier: None
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public favNum = 5;
    
    //array,struct,mapping
    struct People {
        uint256 favouriteNumber;
        string name;
    }
    //People public krshn  = People({favouriteNumber:11, name: "vasu"});
    
    People[] public person;

     //hash table for number assigned to name
    mapping(uint256 => string) public nameTofavNum;

    function  store(uint256 fnum) public {
        favNum = fnum;
    }

    //calldata,memory,storage
    function addPerson(uint256  _favouriteNumber, string memory _name) public {
          //man memory firstMan = man({age:_age, name:_name});
          person.push(People(_favouriteNumber,_name));
          nameTofavNum[_favouriteNumber] = _name;
    }

    function  retrieve() public view returns(uint256) {
        return favNum;
    }
}
