// SPDX-License-Identifier: MIT
pragma solidity >= 0.6;

contract Mappings {
    mapping(uint => int) numbers;
    mapping(uint => string) names;

    function setX() public {
        // we dont need to create a copy of the upper mapping.
        // We can change it directly here.
        // but it's just to see how a copy can modify the upper mapping
        // couse is jus a reference of that.
        mapping(uint => int) storage numbers_ = numbers;
        numbers_[0] = 1;
        numbers_[1] = 2;

        mapping(uint => string) storage names_ = names;
        names_[0] = "David";
        names_[1] = "Biagiola";
    }

    function getX() public view returns(int) {
        return numbers[1];
    }
}
