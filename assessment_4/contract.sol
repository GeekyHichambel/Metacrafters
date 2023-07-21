// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SampleToken {
    string token_name = "MetaZeta";
    string token_symbol = "MTZ";
    uint token_supply = 20000000;

    function get_name() public view returns (string memory){
        return token_name;
    } 

    function get_symbol() public view returns (string memory){
        return token_symbol;
    }

    function get_token_supply() public view returns (uint){
        return token_supply;
    }
}
