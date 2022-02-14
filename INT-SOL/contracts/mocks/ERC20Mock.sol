pragma solidity ^0.8.11;

import "../token/ERC20/ERC20.sol";

// mock class using ERC20
contract ERC20Mock is ERC20 {
    constructor (address initialAccount, uint256 initialBalance) public {
        _mint(initialAccount, initialBalance);
    }

    function mint(address account, uint256 amount) public {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public {
        _burn(account, amount);
    }

    function burnFrom(address account, uint256 amount) public {
        _burnFrom(account, amount);
    }

    function approveInternal(address owner, address spender, uint256 value) public {
        _approve(owner, spender, value);
    }
}
