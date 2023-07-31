# Error Handling

This demonstrates how to handle errors in a solidity contract through a very simple example. The purpose of this program is to demonstrate the functionality of functions such as require, revert and assert.


## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts. The contract is a basic Ethereum smart contract that enables a deposit and withdrawal system. It has an owner who can deposit funds into the contract. Users can withdraw funds, but only if their requested amount is available in the contract. Unauthorized actions are reverted with custom error messages. The contract utilizes require() statements to check conditions and revert() for custom error handling. Additionally, an assert() statement ensures the contract's balance never goes negative. While simplified, it demonstrates essential concepts for handling transactions and protecting the contract's integrity, making it a starting point for more complex applications.
## Getting Started
**Executing program**

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:
```
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


```

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at  (https://remix.ethereum.org) .Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., project.sol). Copy and paste the following code written into the file.To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set heigher to "0.8.1" (or another compatible version), and then click on the "Compile project.sol" button.Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandlingProject" contract from the dropdown menu, and then click on the "Deploy" button.Once the contract is deployed, you can interact with it by calling the setValue function to set the value, performDivison function to perform the division and value variable check to check the value of the variable that is public so we can check that. Finally, click on the "transact" button to execute the function and retrieve the values and messages.


## Authors

-jahanvi


## License

This project is licensed under the MIT License - see [MIT LICENSE] for details
