// SPDX-License-Identifier: LGPL-3.0-only

pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CryptoReal is ERC20, Ownable {

    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) Ownable(msg.sender) {
        _mint(msg.sender, 1000);
    }

    // Owner gets a fee of each transaction
    function transfer(address recipient_, uint256 amount_) public override returns (bool) {
        uint256 fee = (amount_ * 1) / 1000; // 0.1% fee
        uint256 amountAfterFee = amount_ - fee;

        _transfer(msg.sender, recipient_, amountAfterFee);
        _transfer(msg.sender, owner(), fee);
        return true;
    }

    // Only the owner can burn tokens, with a maximum of 10 tokens
    function burn(uint256 amount_) public onlyOwner {
        require(amount_ <= 10, "Max burn limit is 10 tokens");
        _burn(msg.sender, amount_);
    }
}