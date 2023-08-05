// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    uint256 private constant supply = 100;
    uint8 private constant decimal = 0;

    struct InGameItem {
        string name;
        uint256 priceInTokens;
    }

    mapping(string => InGameItem) private _items;
    string[] private _itemNames;

    event Burn(address indexed account, uint256 amount);
    event Mint(address indexed account, uint256 amount);
    event Redeem(address indexed account, uint256 amount, string item);

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        _mint(msg.sender, supply);
    }

    function addItemToStore(string memory itemName, uint256 priceInTokens) external onlyOwner {
        require(priceInTokens > 0, "Price must be greater than zero");

        _itemNames.push(itemName);
        _items[itemName] = InGameItem(itemName, priceInTokens);
    }

    function getItemPrice(string memory itemName) public view returns (uint256) {
        return _items[itemName].priceInTokens;
    }

    function redeem(string memory itemName) external {
        uint256 priceInTokens = getItemPrice(itemName);
        require(balanceOf(msg.sender) >= priceInTokens, "Insufficient balance");

        _burn(msg.sender, priceInTokens);
        emit Redeem(msg.sender, priceInTokens, itemName);
    }

    function getAllItems() external view returns (InGameItem[] memory) {
        InGameItem[] memory allItems = new InGameItem[](_itemNames.length);

        for (uint256 i = 0; i < _itemNames.length; i++) {
            allItems[i] = _items[_itemNames[i]];
        }

        return allItems;
    }

    function mint(address account, uint256 amount) external onlyOwner {
     _mint(account, amount);
    }

    function burn(uint256 amount) external {
      _burn(msg.sender, amount);
        emit Burn(msg.sender, amount);
    }
    function checkBalance() external view returns(uint){
           return balanceOf(msg.sender);
        }
        //using the standard transfer function provided by the ERC20 contract for token transfers.
}
