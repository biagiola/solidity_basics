// SPDX-License-Identifier: MIT
pragma solidity >=0.8;

contract Mappings {
    // firstname, lastname, year
    mapping(uint => mapping(uint => string)) multi_dimensional;

    function setUsers() public {
        // al the values in the 2nd dimension must to be strings
        multi_dimensional[0][0] = "David";
        multi_dimensional[0][1] = "Biagiola";
        multi_dimensional[0][2] = "1994";

        multi_dimensional[1][0] = "Asdf";
        multi_dimensional[1][1] = "Qwer";
        multi_dimensional[1][2] = "2023";
    }

    function getUser(uint user_id) public view returns(string memory) {
        
        string storage firstname = multi_dimensional[user_id][0];
        string storage lastname  = multi_dimensional[user_id][1];
        string storage year      = multi_dimensional[user_id][2];

        // Why we need to use memory and not storage in this part?
        string memory fullname = string(abi.encodePacked(firstname, " ", lastname));
        string memory result = string(abi.encodePacked(
            "Fullname: ", fullname, " "
            "Year: ", year
        ));

        return result;
    }   
}
