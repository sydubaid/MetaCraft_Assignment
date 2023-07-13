// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyContract {
    address payable public owner;
    uint256 public balance;

    event Deposit(uint256 amount);
    event inverse(uint256 number);
    event Withdraw(uint256 amount);

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }

    function getBalance() public view returns(uint256){
        return balance;
    }

    function deposit(uint256 _amount) public payable {
    
        balance += _amount;
        emit Deposit(_amount);
    }

    // error
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function withdraw(uint256 _withdrawAmount) public {
        if (balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _withdrawAmount
            });
        }
        balance -= _withdrawAmount;
        emit Withdraw(_withdrawAmount);
        
    }
     function inverse(uint256 number) public pure returns (uint256) {
        uint256 result = 0;
        uint256 n = number;
        while (n != 0) {
            result = result * 10 + n % 10;
            n /= 10;
        } 
    
}
