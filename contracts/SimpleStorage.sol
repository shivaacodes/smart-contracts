//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24; //stating the version

contract SimpleStorage{
    uint256 myfavoriteNumber; // 7
    //uint256[] listOfFavoriteNumbers; // [3,99,67,00]

    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    //dynamic array
    Person[] public listOfPeople; //[]

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber)public {
        myfavoriteNumber=_favoriteNumber;
    }
    
    //view, pure
    function retrieve() public view returns(uint256){
        return myfavoriteNumber;//storage variable
    }

    //calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber)public{
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }
}