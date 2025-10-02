// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract SimpleTokenTimelock {
    IERC20 public immutable token;
    address public immutable beneficiary;
    uint64 public immutable releaseTime;

    constructor(
        IERC20 _token,
        address _beneficiary,
        uint64 _releaseTime
    ) {
        require(_releaseTime > block.timestamp, "Release time is before current time");
        token = _token;
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
    }

    function release() public {
        require(block.timestamp >= releaseTime, "Tokens are still locked");
        uint256 amount = token.balanceOf(address(this));
        require(amount > 0, "No tokens to release");
        token.transfer(beneficiary, amount);
    }
}
