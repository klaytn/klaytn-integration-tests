// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "./IERC721.sol";

/**
 * @title ERC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
abstract contract IERC721Metadata is IERC721 {
    function name() virtual external view returns (string memory);
    function symbol() virtual external view returns (string memory);
    function tokenURI(uint256 tokenId) virtual external view returns (string memory);
}
