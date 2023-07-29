// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


contract shibainu is ERC721, ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    constructor() ERC721("Shiba-Inu", "SBU") {}


    string[] uri = [
        "https://gateway.pinata.cloud/ipfs/QmUgaXzkThKUS4VpJyW6HzVrbYAqgwuVTarnakwPXbfVD6/NFT1.json",
        "https://gateway.pinata.cloud/ipfs/QmUgaXzkThKUS4VpJyW6HzVrbYAqgwuVTarnakwPXbfVD6/NFT2.json",
        "https://gateway.pinata.cloud/ipfs/QmUgaXzkThKUS4VpJyW6HzVrbYAqgwuVTarnakwPXbfVD6/NFT3.json",
        "https://gateway.pinata.cloud/ipfs/QmUgaXzkThKUS4VpJyW6HzVrbYAqgwuVTarnakwPXbfVD6/NFT4.json",
        "https://gateway.pinata.cloud/ipfs/QmUgaXzkThKUS4VpJyW6HzVrbYAqgwuVTarnakwPXbfVD6/NFT5.json"
    ];

    string[] prompt = [    
        "Space Dog",
        "Astro Dog",
        "Dodge Coin",
        "Shiba-inu to space",
        "space-dog"
    ];
function safeMint(address to) public onlyOwner returns(uint256 ){
                _tokenIds.increment();

        uint256 tokenId = _tokenIds.current();
 
            _safeMint(to, tokenId);
            _setTokenURI(tokenId, uri[0]); // You can set the token URI if needed
            return tokenId;
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function promptDescription(uint256 tokenID) external view returns (string memory) {
        return prompt[tokenID];
    }

    function tokenURI(uint256 tokenId) public view override(ERC721, ERC721URIStorage) returns (string memory) {
        return super.tokenURI(tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721URIStorage) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}