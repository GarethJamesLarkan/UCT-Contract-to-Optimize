// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Optimize {

    //Optimize
    uint256 public variable1;
    uint24 public variable2;
    uint256 public variable3;
    address public variable4;
    bool public variable5;

    uint256 public numberOfHumans;
    uint256 public totalAges = 0;

    //Optimize
    uint256 public maxAge = 90;
    uint256 public minAge = 18;

    uint256[] public humanFavNumbers;

    mapping(uint256 => uint256) public humanIdToAge;
    mapping(uint256 => Human) public humans;

    //Optimize
    struct Human {
        string name;
        uint24 favNumber;
        uint256 age;
    }

    //Optimize
    function getTotalHumanAges() public returns(uint256) {
        for(uint256 x = 0; x < numberOfHumans; x++){
            humanIdToAge[numberOfHumans] += totalAges;
        }

        return totalAges;
    }

    //Optimize
    function addHuman(string memory _name, uint24 _favNumber, uint256 _age) public {
        require(_age <= maxAge, "Too old");
        require(_age >= minAge, "Too young");

        humans[numberOfHumans] = Human({
            name: _name,
            favNumber: _favNumber,
            age: _age
        });

        humanIdToAge[numberOfHumans] = _age;
        humanFavNumbers.push(_favNumber);

        numberOfHumans++;
    }

}
