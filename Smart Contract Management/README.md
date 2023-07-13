

## EVE AVAX Smart Contract Management PROJECT

This project demonstrates deployment of frontend with solidity

## Prerequisites

- Node.js (v14.0.0 or higher)
- MetaMask wallet extension installed in your browser
- 
## Description

For this project, create a simple contract with 2-3 functions. Then show the values of those functions in frontend of the application.
The files index.js, SmartContract.sol, and deploy.js contain codes.



  

## Setup

After cloning GitHub, you will want to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type:  npm i
2. Open two additional terminals in your VS code
3. In the second terminal type: npx hardhat node
4. In the third terminal, type:  npx hardhat run --network localhost scripts/deploy.js 
5. Back in the first terminal, type:  npm run dev  to launch the front end.

6.Open the application in your browser, the project will be running on your localhost. Typically at:

http://localhost:3000


## Setting up the local host network and a dummy account in your Metamask Wallet


->We need to set up a local network with the MetaMask wallet. otherwise, Metamask will not be able to communicate with the local node. click on the MetaMask extension.
<pre>
-> Click on (Add a Network)
-> Click on (Add a Network Manually)
-> Give the (Network name - whatever you want)
-> Set the (New RPC URL - http://127.0.0.1:8545/ )
-> Set the (Chain ID - 31337 )
-> Set the (Currency symbol - ETH )
->Now set the MetaMask wallet network to the newly created local network</pre>
-> Now you can deposit and withdraw the dummy ETH.

## Technologies Used

- React - JavaScript library for building user interfaces
- HTML CSS - For Frontend and styling
- MetaMask - Wallet and gateway to Ethereum blockchain
- ethers.js - Library for interacting with Ethereum smart contracts

## License

- This project is licensed under the MIT License.

## Authors

Syed Ubaid


