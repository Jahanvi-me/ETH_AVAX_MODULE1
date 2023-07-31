//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract ETH_Module1 {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }
    function deposit(uint256 amount) external {
        require(msg.sender == owner, "Only the contract owner can deposit");
        require(amount > 0, "Amount must be greater than zero");
        balance += amount;
    }
    function withdraw(uint256 amount) external {
        if (amount > balance) {
            revert("Insufficient balance to withdraw");
        }
        balance -= amount;
        assert(balance >= 0);
    }
}

