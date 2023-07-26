const hre = require("hardhat");

async function main() {

const deployedContract = await hre.ethers.deployContract("DegenToken");

await deployedContract.waitForDeployment();

console.log("CONTRACT ADDRESS:", await deployedContract.getAddress());

}
// Hardhat recommends this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});