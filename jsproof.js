
const NFTs = []

function mintNFT (_name,_eyeColor,_shirtType) {
const NFT = {
    "name" : _name,
    "eyeColor" : _eyeColor,
    "shirtType" : _shirtType,
    }
    NFTs.push(NFT);
    console.log("Sugary: " + _name);
}

function listNFTs () {
for(let i = 0; i < NFTs.length; i++) {
    console.log("\nID: \t\t" + (i + 1))
    console.log("\nName: \t\t" + NFTs[i].name);
    console.log("Eye Color: \t" + NFTs[i].eyeColor);
    console.log("Shirt Type: " + NFTs[i].shirtType);
}
}

function getTotalSupply() {
console.log("\n" + NFTs.length);
}

mintNFT("syed", "black", "shirt")
listNFTs();
getTotalSupply();