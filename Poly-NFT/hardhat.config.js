require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: {
    compilers: [
      {
        version: "0.8.0",
      },
      {
        version: "0.8.9",
      },
    ],
  },
  networks: {
    mumbai: {
      url: 'https://rpc-mumbai.maticvigil.com',
      accounts: ["7e4545fdd0577df602d5ae7ba8cb0d64e6e844c62635e42b8a0ebe992390ba6f"],
    },
    goerli: {
      url: 'https://eth-goerli.g.alchemy.com/v2/nyHyzW8RbkwSKnszaYmdcV-UAjmRa9AH',
      accounts: ["7e4545fdd0577df602d5ae7ba8cb0d64e6e844c62635e42b8a0ebe992390ba6f"],
    },
  },
};
