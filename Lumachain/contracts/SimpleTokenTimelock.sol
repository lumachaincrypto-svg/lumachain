// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
}

/**
 * @title SimpleTokenTimelock
 * @notice Holds ERC20 tokens and releases them to a beneficiary after a delay.
 * Constructor:
 *  - _token: ERC20 token address
 *  - _beneficiary: address that can receive when unlocked
 *  - _releaseDelayDays: delay in days from deployment
 *
 * Functions:
 *  - fund(uint256 amount): transferFrom caller to this contract (needs prior approve)
 *  - release(): sends all locked tokens to the beneficiary after release time
 *  - lockedBalance(): current token balance held by this contract
 *  - beneficiary(), releaseTime(), token(): views
 */
contract SimpleTokenTimelock {
    IERC20 public immutable token;
    address public immutable beneficiary;
    uint64  public immutable releaseTime; // unix seconds

    event Funded(address indexed from, uint256 amount);
    event Released(uint256 amount);

    constructor(address _token, address _beneficiary, uint256 _releaseDelayDays) {
        require(_token != address(0), "token=0");
        require(_beneficiary != address(0), "beneficiary=0");
        require(_releaseDelayDays > 0, "delay=0");

        token = IERC20(_token);
        beneficiary = _beneficiary;
        releaseTime = uint64(block.timestamp + _releaseDelayDays * 1 days);
    }

    function lockedBalance() external view returns (uint256) {
        return token.balanceOf(address(this));
    }

    function fund(uint256 amount) external {
        require(amount > 0, "amount=0");
        bool ok = token.transferFrom(msg.sender, address(this), amount);
        require(ok, "transferFrom failed");
        emit Funded(msg.sender, amount);
    }

    function release() external {
        require(block.timestamp >= releaseTime, "too early");
        uint256 bal = token.balanceOf(address(this));
        require(bal > 0, "nothing to release");
        bool ok = token.transfer(beneficiary, bal);
        require(ok, "transfer failed");
        emit Released(bal);
    }
}
