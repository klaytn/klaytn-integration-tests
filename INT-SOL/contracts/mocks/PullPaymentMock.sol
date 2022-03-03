// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "../payment/PullPayment.sol";

// mock class using PullPayment
contract PullPaymentMock is PullPayment {
    constructor () public payable {
        // solhint-disable-previous-line no-empty-blocks
    }

    // test helper function to call asyncTransfer
    function callTransfer(address dest, uint256 amount) public {
        _asyncTransfer(dest, amount);
    }
}
