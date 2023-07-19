// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SampleToken {
    string constant public Token_name = "MetaZeta";
    string constant public Token_abbrv = "MTZ";
    uint public total_supply = 20000000000;
    mapping (address => uint) public balances;

    function mint(address _address, uint value) public{
        total_supply += value;
        balances[_address] += value;
    }

    function burn(address _address, uint value)public{
        if (balances[_address] >= value){
            balances[_address] -= value;
            total_supply -= value;
        }
        else{
            revert("Insuffienct balance");
        }
    }
}
