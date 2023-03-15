// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AlirezaToken is ERC20 {
    address payable public owner;
    uint private initialSupply = 70_000_000;

    constructor() ERC20("AlirezaToken", "ALT") {
        owner = payable(msg.sender);
        // address of deployer, the amount
        // _mint(owner, initialSupply * (10 ** 18));
        _mint(owner, initialSupply * (10 ** decimals()));
    }
}
