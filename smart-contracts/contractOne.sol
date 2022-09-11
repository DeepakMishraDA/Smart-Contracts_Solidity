//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FirstSmart {
    uint256 public varOne = 5;
    
    //array,struct,mapping
    struct man {
        uint256 age;
        string name;
    }
    man public krshn = man({age:11, name: "vasu"});
    function  store(uint256 ff) public  {
        varOne = ff;
        //return ff;
    }
    man[] public human;
    mapping(uint256 => string) public favNum;
    //calldata,memory,storage
    function arrUpdate(uint256  _age, string memory _name) public {
          //man memory firstMan = man({age:_age, name:_name});
          human.push(man(_age,_name));
          favNum[_age] = _name;
    }
     function  restore() public view returns(uint256) {
        //varOne = ff;
        return varOne;
    }
}