# SmartContract Project: Conditional Statements

This is a Solidity smart contract that demonstrates the usage of the conditional statements in solidity.

# Description

Conditional statements such as ```require()```, ```revert()``` and ```assert()``` play an essential role in exception and error handling.
Each of these statements have their own use, which is precisely shown in the contract given below. 
These statements terminates a function incase of exception or unfulfillment of a condition and provides the user with a message for debugging the error caused.

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract test{
    function age_check (uint _age) public pure returns (string memory){
        require(_age >= 18,"You are not old enough");
        return ("You are old enough");
    }

    function able_to_buy_gun (uint _age) public pure returns (string memory){
        assert(_age >=21);
        return ("Yes you are allowed to buy gun");
    }

    function divide(uint _dividend,uint _divisor)public pure returns (uint){
        if (_divisor == 0){
            revert("The Divisor can't be zero");
        }
        return (_dividend/_divisor);
    }
}
```
