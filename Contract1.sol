pragma solidity ^0.5.1;

contract Contract1 {
    string public value;

    constructor() public {
        value = "Hello World";
    }

    function set(string memory _value) public {
        value = _value;
    }
}
