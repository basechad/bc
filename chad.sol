// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

import "./ERC20.sol";

contract FixedToken is ERC20 {
    /**
     * @param name Token Name
     * @param symbol Token Symbol
     * @param totalSupply Token Supply
     */
    constructor(
        string memory name,
        string memory symbol,
        uint256 totalSupply
    ) payable ERC20(name, symbol) {
        _mint(msg.sender, totalSupply);
    }
}

