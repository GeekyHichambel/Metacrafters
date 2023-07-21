# Create a Token

This solidity program demonstrates the creation of an erc-20 token and it also demonstrates some basic functionality of the smart constracts.

# Description

The contract contains of some basic info of a token, such as its name, symbol and total supply.
Along with this it also has two major functions, either to mint more tokens or burn some tokens form the supply.
The code also demonstrates the concept of mapping as we are assigning balances to their respective owner address.

```javascript
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
```
# From the author

Thank you metacrafters for providing me with this oppurtunity to learn more about the web3 world and helping in honing my skills.
