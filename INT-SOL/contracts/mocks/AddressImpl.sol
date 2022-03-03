// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "../utils/Address.sol";

contract AddressImpl {
    function isContract(address account) external view returns (bool) {
        return Address.isContract(account);
    }
}
