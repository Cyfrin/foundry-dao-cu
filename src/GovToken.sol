// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Votes} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";

contract GovToken is ERC20, EIP712, ERC20Votes {
    constructor() ERC20("MyToken", "MTK") EIP712("MyToken", "1.0.0") {}

    // The following functions are overrides required by Solidity.

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function _update(address from, address to, uint256 value) internal override(ERC20, ERC20Votes) {
        super._update(from, to, value);
    }
}
