const hre = require("hardhat");
const tokenContractJSON = require("../artifacts/contracts/shibainu.sol/shibainu.json");
require('dotenv').config();

const tokenAddress = '0xdb21d43e8d11B3479444B9C042f7D2e22FfeAA39'; // Extract token address from .env
const tokenABI = tokenContractJSON.abi;
const walletAddress = "0x6469142310dEf95088910D976E828D60DD3bbc59";

 // Array to store minted token IDs

async function main() {
    const token = await hre.ethers.getContractAt(tokenABI, tokenAddress);
    for (let i = 0; i < 5; i++) {
        const tx = await token.safeMint(walletAddress);
        const receipt = await tx.wait();

        // Check if the 'events' array is not empty
 
    }

    console.log("You now have: " + await token.balanceOf(walletAddress) + " tokens");
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});


