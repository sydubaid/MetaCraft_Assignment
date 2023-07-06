// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandlingExample {
    uint public value;

    function OverallMarks(uint num) public pure {
        assert(num > 70);
    }

    function MathsMarks(uint num) public pure {
        if (num <= 60) {
            revert("Marks must be greater or equal to 60.");
        }
    }

    function ScienceMarks(uint num) public pure {
        require(num > 60, "Number must be greater than 60.");
    }


}
