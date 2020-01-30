pragma solidity ^0.5.1;

contract Contract1 {
    string value;

    constructor() public {
        value = "Hello World";
    }

    function get() public view returns (string memory) {
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    }
}
