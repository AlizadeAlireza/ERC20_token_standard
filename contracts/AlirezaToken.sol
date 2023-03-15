// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";

// in this way we have both of these
contract AlirezaToken is ERC20Capped {
    address payable public owner;
    uint private initialSupply = 70_000_000;

    constructor(
        uint256 cap
    ) ERC20("AlirezaToken", "ALT") ERC20Capped(cap * (10 ** decimals())) {
        owner = payable(msg.sender);
        // address of deployer, the amount
        // _mint(owner, initialSupply * (10 ** 18));
        _mint(owner, initialSupply * (10 ** decimals()));
    }
}
