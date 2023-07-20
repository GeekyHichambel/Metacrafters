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
