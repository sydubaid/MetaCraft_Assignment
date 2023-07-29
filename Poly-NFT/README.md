

  # Project: Deployment and Transfer with Polygon Bridge

## Description

In this project, we showcase a step-by-step guide on how to deploy a captivating NFT collection on the Ethereum blockchain while seamlessly transferring the assets to the Polygon network through the Polygon Bridge. Our primary goals encompass enhancing the demand for the NFTs by harnessing Polygon's advantages, such as faster and more cost-effective transactions. Additionally, we integrate an innovative image generation tool to craft one-of-a-kind NFT images, enriching the overall appeal of the collection

### Objective
  
 
In this project, we deployed the "Shibu-Inu" collection on the Ethereum blockchain, creating five unique NFT images using the Bing AI image generation tool and securely storing them on IPFS via pinata.cloud. With the ERC721 smart contract "shibainu" and its promptDescription function, users can access the image generation prompts. We then seamlessly mapped the NFT collection to the Polygon network, leveraging faster and more cost-effective transactions. Through Hardhat scripts, we batch minted and transferred all NFTs from Ethereum to Polygon Mumbai using the FxPortal Bridge, ensuring accurate balance and smooth functionality on the Polygon Mumbai network.

### Tools Used
Hardhat
ERC721
FxPortal Bridge
        
### How to run

1. Start by cloning this repository to your local machine.
2. Utilize any AI image generation tool to create your NFTs, ensuring they are unique and visually appealing.
3. Upload your newly created NFTs to IPFS for efficient storage and accessibility.
4. In the Hardhat configuration file, add your desired networks and private key of your wallet for deployment purposes.
5. Open the terminal and install the necessary dependencies by running the command npm i.
6. Create a smart contract using ERC721 standard and include a prompt description function.
    Compile the contract by executing npx hardhat compile.
8. Deploy the smart contract to the desired network (e.g., Goerli)
    by running npx hardhat run scripts/deploy.js --network goerli.
10. To call the prompt description function
    execute npx hardhat run scripts/prompt.js --network goerli.
12. Mint five NFTs simultaneously by running
    npx hardhat run scripts/batchmint.js --network goerli.
14. To transfer the NFTs from Goerli to the Polygon Mumbai network via the bridge
    use the script npx hardhat run scripts/approvedep.js --network goerli.
16. Finally, check the NFT balance on the Polygon Mumbai network
    by running npx hardhat run scripts/getbal.js --network mumbai.

## Authors

Syed Ubaid

## License

This project is licensed under the MIT License.

