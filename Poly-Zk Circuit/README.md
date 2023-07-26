
# Custom Circuit 
This repository contains the circuit and the deployment process of mumbai Testnet

circuit.circom contains the code for the circuit 

## Steps to Run

### Install
`npm i`

### Compile
`npx hardhat circom` 

### To prove you know the inputs A (0) & B (1) that yield Q=0 as output.
Inside your input.json file paste 
`{
  "a": "0",
  "b": "1"
}`


### Prove and Deploy
`npx hardhat run scripts/deploy.ts`
Calls `verifyProof()` on the verifier contract with calldata

### Deploy on Mumbai Testnet
`npx hardhat run scripts/depoly.ts --network mumbai`
  

### Author
Syed Ubaid
