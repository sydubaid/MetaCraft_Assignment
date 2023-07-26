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

    struct Redemption {
        ItemOption itemOption;
        uint256 tokenAmount;
        uint256 optionId;
    }

    mapping(address => Redemption) public redemptionOptions;

    function redeem(uint256 optionId) public {
        require(optionId >= 1 && optionId <= 3, "Invalid option");

        if (optionId == 1) {
            require(balanceOf(msg.sender) >= 80, "Insufficient tokens");
            _burn(msg.sender, 80);
            redemptionOptions[msg.sender] = Redemption(ItemOption.NFT1, 1, optionId);
        } else if (optionId == 2) {
            require(balanceOf(msg.sender) >= 140, "Insufficient tokens");
            _burn(msg.sender, 140);
            redemptionOptions[msg.sender] = Redemption(ItemOption.NFT2, 1, optionId);
        } else if (optionId == 3) {
            require(balanceOf(msg.sender) >= 220, "Insufficient tokens");
            _burn(msg.sender, 220);
            redemptionOptions[msg.sender] = Redemption(ItemOption.NFT3, 1, optionId);
        }
    }

}