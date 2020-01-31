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
    string public symbol;
    constructor(string memory _name, string memory _symbol)
        public
        ERC20Token(_name)
    {
        symbol = _symbol;
    }
}
