//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract MyToken {
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalTokenSupply;
    mapping(address => uint256) public balanceOf;

    constructor() {
        tokenName = "Token1";
        tokenSymbol = "T1";
        totalTokenSupply = 0;
    }

    function mint(address recipient, uint256 amount) public {
        totalTokenSupply += amount;
        balanceOf[recipient] += amount;
    }

    function burn(address recipient, uint256 amount) public {
        if (balanceOf[recipient] >= amount) {
            totalTokenSupply -= amount;
            balanceOf[recipient] -= amount;
        }
    }
}
