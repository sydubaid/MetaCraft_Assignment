// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract DegenToken is ERC20, Ownable {
    constructor() ERC20("DEGEN", "DEG") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() override public pure returns(uint8){
        return 0;
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(amount > 0, "Amount must be greater than zero");
        return super.transfer(recipient, amount);
    }
    function burnTokens(uint amount) external{
            require(balanceOf(msg.sender)>= amount, "You do not have enough Tokens");
            _burn(msg.sender, amount);
    }

    enum ItemOption { NFT1, NFT2, NFT3}

    struct Redemp1 {
        ItemOption itemOption; uint256 tokenAmount; uint256 optionId;
    }

    mapping(address => Redemp1) public redemptionOptions;

    function redeem(uint256 optionId) public {
        require(optionId >= 1 && optionId <= 3, "Invalid option");

        if (optionId == 1) {
            require(balanceOf(msg.sender) >= 100, "Insufficient tokens");
            _burn(msg.sender, 100);
            redemptionOptions[msg.sender] = Redemp1(ItemOption.NFT1, 1, optionId);
        } else if (optionId == 2) {
            require(balanceOf(msg.sender) >= 150, "Insufficient tokens");
            _burn(msg.sender, 150);
            redemptionOptions[msg.sender] = Redemp1(ItemOption.NFT2, 1, optionId);
        } else if (optionId == 3) {
            require(balanceOf(msg.sender) >= 200, "Insufficient tokens");
            _burn(msg.sender, 200);
            redemptionOptions[msg.sender] = Redemp1(ItemOption.NFT3, 1, optionId);
        }
    }

}
    
