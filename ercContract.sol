// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Mint is ERC20{
    address public owner;
    
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        owner= msg.sender;  
    }

    modifier onlyOwner {
        require(msg.sender==owner, "you are not the owner");
        _;
    }

    modifier hasTokens(uint256 _amount) {
        require(balanceOf(msg.sender) >= _amount, "Insufficient balance to transfer");
        _;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public hasTokens(amount) {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override hasTokens(amount)  returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }
}
