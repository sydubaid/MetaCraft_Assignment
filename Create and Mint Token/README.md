# ETH-AVAX Create and Mint Token

A smart contract is written to create a token on local hardhat network and interact with the smart contract using remix IDE

## Description

For this project, you will write a smart contract to create your own token on a local HardHat network. Once you have your contract, you should be able to use remix to interact with it. From remix, the contract owner should be able to mint tokens to a provided address. Any user should be able to burn and transfer tokens.

## Deployment on Local Hardhat Network

Follow these steps to deploy token on local hardhat network using local pc (here i have used VS Code)

1. Clone the repository and install its dependencies:

```
git clone https://github.com/sydubaid/MetaCraft_Assignment/Create and Mint Token.git
cd ETH_AVAX-3Module.git
npm install
```

2. Install the `@remix-project/remixd` dependency to connect Remix IDE:

```
npm install -g @remix-project/remixd
```

3. Run the following command in the terminal to connect Remix IDE to the Hardhat local host:

```
remixd -s ./ --remix-ide https://remix.ethereum.org
```

4. Open a new terminal and start Hardhat's testing network:

```
npx hardhat node
```

5. Open the [Remix](https://remix.ethereum.org/) online IDE in your browser.

6. Go to File Explorer -> Workspaces -> Connect to locahost and click confirm.

7. Rewrite the `Token.sol` file in the contracts directory with your own token code.

8. Compile the contract in the Remix IDE.

9. In the deploy section of Remix, select the environment as "Dev-Hardhat Provider".

10. Deploy your contract on the local Hardhat network using the deploy button in Remix.

11. Confirm the deployment transaction in Remix.

12. Once the contract is deployed, you will see the contract address in the Remix console. Make note of this address for future interactions.

## Interacting with the Contract using Remix with Hardhat Provider

-After the contract is deployed, Remix will display the deployed contract instance in the "Deployed Contracts" section.

-Expand the deployed contract instance to see the available functions and their input fields.

-You can now interact with the contract by calling its functions and providing the required inputs.
  
  -To mint tokens, call the mint function and provide the receiver's address and the desired amount.
  -To burn tokens, call the burn function and provide the amount to be burned.

## Authors

Syed Ubaid

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
