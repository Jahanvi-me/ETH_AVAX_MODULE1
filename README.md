# Error Handling

This demonstrates how to handle errors in a solidity contract through a very simple example. The purpose of this program is to demonstrate the functionality of functions such as require, revert and assert.


## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts. The contract has a function that sets the value of the varble by checking some constrains as given in program and another function to divide the two values taken from the user by checking that the number is divisible and the value of denominator is not equal to 0. This program uses the concept of Functions and Error handling.The "perenterNum" function sets a new enterNum value but requires that the input _enterNum must be greater than zero. It uses require() for input validation and assert() to ensure that the new value is different from the existing value.The perMath function performs a division but requires that the _denom must be non-zero. If the _nume is not divisible by the _deno, the function will revert with a specific error message using the revert() statement.It's essential to use these error handling statements to maintain the security and correctness of your smart contract.
## Getting Started
**Executing program**

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract ErrorHandlingProject{
    uint public enterNum;

    function perenterNum(uint _enterNum) public{
        require(_enterNum>0,"Entered value should bhe greater then 0");
        assert(_enterNum !=enterNum);
        enterNum=_enterNum;
    }

    function perMath(uint _nume,uint _deno) public pure returns(uint) {
        require(_deno !=0,"Not Divisible by zero");

        if(_nume%_deno !=0){
            revert("Numerator should be devided by denominator");
        }
        return _nume/_deno;
    }}
```

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at  (https://remix.ethereum.org) .Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., project.sol). Copy and paste the following code written into the file.To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set heigher to "0.8.1" (or another compatible version), and then click on the "Compile project.sol" button.Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandlingProject" contract from the dropdown menu, and then click on the "Deploy" button.Once the contract is deployed, you can interact with it by calling the setValue function to set the value, performDivison function to perform the division and value variable check to check the value of the variable that is public so we can check that. Finally, click on the "transact" button to execute the function and retrieve the values and messages.


## Authors

-jahanvi


## License

This project is licensed under the MIT License - see [MIT LICENSE] for details
