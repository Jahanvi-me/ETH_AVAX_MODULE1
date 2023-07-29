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
