// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "../crowdsale/Crowdsale.sol";

contract CrowdsaleMock is Crowdsale {
    constructor (uint256 rate, address payable wallet, IERC20 token) public Crowdsale(rate, wallet, token) {
        // solhint-disable-previous-line no-empty-blocks
    }
}
