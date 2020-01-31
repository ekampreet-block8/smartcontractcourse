pragma solidity ^0.5.1;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;

    constructor(string memory _name) public {
        name = _name;
    }

    function mint() public {
        balances[tx.origin]++;
    }
}

contract MyToken is ERC20Token {
    string public name = "My Token";
}
