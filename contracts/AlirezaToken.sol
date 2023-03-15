// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AlirezaToken is ERC20 {
    constructor(uint initialSupply) ERC20("AlirezaToken", "ALT") {
        // address of deployer, the amount
        _mint(msg.sender, initialSupply);
    }
}
