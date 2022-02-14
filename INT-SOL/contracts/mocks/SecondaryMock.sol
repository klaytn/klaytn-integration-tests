pragma solidity ^0.8.11;

import "../ownership/Secondary.sol";

contract SecondaryMock is Secondary {
    function onlyPrimaryMock() public view onlyPrimary {
        // solhint-disable-previous-line no-empty-blocks
    }
}
