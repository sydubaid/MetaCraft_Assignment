# Creating a Token

Program introduces a simple custom token called "MyToken" built on the Ethereum blockchain using Solidity. It allows for the creation and destruction of tokens, keeping track of their total supply and individual balances. With the ability to mint new tokens and burn existing ones, the program ensures that token holders have enough balance before performing any burning actions. By adhering to the MIT license, this contract can be freely used and distributed. Overall, it provides a user-friendly and accessible framework for creating and managing custom tokens on the Ethereum platform, offering a reliable solution for token issuance and tracking.

## Description

"MyToken" written in Solidity for the Ethereum blockchain. The contract includes public variables to store essential details of the token, such as its name, abbreviation, and total supply. It utilizes a mapping called "tokenHolders" to associate Ethereum addresses with their respective token balances, enabling efficient tracking and management of ownership. The program offers two core functions: "mint" and "burn". The "mint" function allows for the creation of new tokens, increasing the total supply and updating the balance of the recipient address. The "burn" function facilitates the destruction of tokens, reducing the total supply and deducting the specified amount from the token holder's balance. Importantly, the "burn" function includes a check to ensure that the token holder's balance is sufficient for the requested burn amount. With these functionalities, the contract provides a comprehensive solution for token creation, destruction, and balance management within a secure and decentralized blockchain environment.

## Getting Started

### Installing

Copy the code and paste in remix ide

### Executing program

First deploy the program.
After that we can use the deafult address provided.
Paste the address in the mint add the value 
Check the Balance.
Also we can burn the token via burn.
Add the address.
Burn the token.
Check the balance.


## Authors
Syed Ubaid

Contributors names and contact info
@syedev(https://github.com/sydubaid)
