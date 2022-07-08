// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "../token/ERC20/ERC20.sol";
import "../token/ERC20/ERC20Detailed.sol";

contract ERC20DetailedMock is ERC20, ERC20Detailed {
    constructor (string memory name, string memory symbol, uint8 decimals)
        public
        ERC20Detailed(name, symbol, decimals)
    {
        // solhint-disable-previous-line no-empty-blocks
    }
}
