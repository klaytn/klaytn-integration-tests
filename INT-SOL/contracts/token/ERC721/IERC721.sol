// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "../../introspection/IERC165.sol";

/**
 * @title ERC721 Non-Fungible Token Standard basic interface
 * @dev see https://eips.ethereum.org/EIPS/eip-721
 */
abstract contract IERC721 is IERC165 {
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    function balanceOf(address owner) virtual public view returns (uint256 balance);
    function ownerOf(uint256 tokenId) virtual public view returns (address owner);

    function approve(address to, uint256 tokenId) virtual public;
    function getApproved(uint256 tokenId) virtual public view returns (address operator);

    function setApprovalForAll(address operator, bool _approved) virtual public;
    function isApprovedForAll(address owner, address operator) virtual public view returns (bool);

    function transferFrom(address from, address to, uint256 tokenId) virtual public;
    function safeTransferFrom(address from, address to, uint256 tokenId) virtual public;

    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) virtual public;
}
