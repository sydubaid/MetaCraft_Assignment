# ErrorHandling Contract

This is a Solidity smart contract that demonstrates different error handling techniques using assert, revert, and require functions.

## License

This contract is using the MIT License.

## Prerequisites

- Remix IDE
- Solidity ^0.8.17

## Contract Details

The ErrorHandling contract provides the following functions:

###  function OverallMarks(uint num)

- This function showcases the utilization of the assert function. It accepts a parameter called "num" and verifies if it is not equal to zero using the assert statement. In the event that the condition fails, it triggers an "Internal error" and abruptly terminates the execution.

### function MathsMarks

- This function demonstrates the usage of the revert function.

### ScienceMarks

- This function demonstrates the usage of the require function.
- It checks wheather the number is greater is or not if it is not it throws an error.

## Usage

1. Make sure you have Solidity ^0.8.17 installed.
2. Compile and deploy the ErrorHandling contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.

## License

- This project is licensed under the MIT License.

## Author

- Syed Ubaid
