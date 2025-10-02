// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Lumachain (LUMA) - Minimal ERC20 reference implementation
 * @notice This is a clean ERC20 for transparency & compilation. The deployed
 *         token at 0x453453096e669a8a48772287210098faA55bd64b is verified on PolygonScan.
 */
contract LumaToken {
    string public name = "Lumachain";
    string public symbol = "LUMA";
    uint8 public immutable decimals = 18;

    uint256 public immutable totalSupply;
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    constructor() {
        // 300,000,000 * 10^18
        uint256 supply = 300_000_000 * 10 ** uint256(decimals);
        totalSupply = supply;
        _balances[msg.sender] = supply;
        emit Transfer(address(0), msg.sender, supply);
    }

    function balanceOf(address account) external view returns (uint256) {
        return _balances[account];
    }

    function allowance(address owner, address spender) external view returns (uint256) {
        return _allowances[owner][spender];
    }

    function transfer(address to, uint256 amount) external returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function approve(address spender, uint256 amount) external returns (bool) {
        _allowances[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount) external returns (bool) {
        uint256 current = _allowances[from][msg.sender];
        require(current >= amount, "ERC20: insufficient allowance");
        unchecked { _allowances[from][msg.sender] = current - amount; }
        _transfer(from, to, amount);
        return true;
    }

    function _transfer(address from, address to, uint256 amount) internal {
        require(to != address(0), "ERC20: to zero");
        uint256 bal = _balances[from];
        require(bal >= amount, "ERC20: balance");
        unchecked {
            _balances[from] = bal - amount;
            _balances[to] += amount;
        }
        emit Transfer(from, to, amount);
    }
}
