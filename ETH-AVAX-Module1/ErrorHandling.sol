// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {
   
    function Assertfun(uint num) public pure{
        assert(num!=0);
    }

    function divide(uint _numerator, uint _denomenator) public pure returns (uint){
        if(_numerator<_denomenator){
           
            revert("Pls input numerator greater than denomenator.");
            
        }
        return _numerator/_denomenator;
       

    }
    function multiple(uint a) public view returns (uint){
        require(a>0,"Enter more then 0.");
        return a*mult;

    }
uint mult=3;
}