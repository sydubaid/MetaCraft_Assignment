const hre = require("hardhat");
const fs = require("fs");
const dotenv = require("dotenv");

dotenv.config();

async function main() {
  const lock = await hre.ethers.deployContract("shibainu");

  await lock.waitForDeployment();

  const targetAddress = lock.target;
  console.log(`Deployed to ${targetAddress}`);

  // Write the targetAddress to .env file
  try {
    fs.writeFileSync(".env", `TARGET_ADDRESS=${targetAddress}`);
  } catch (error) {
    console.error("Error writing to .env file:", error);
  }
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
