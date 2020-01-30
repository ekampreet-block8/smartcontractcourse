pragma solidity ^0.4.24;

contract Contract1{
    string value;
    
    constructor() public{
        value="Hello World";
    }
    
    function get() public view returns(string){
        return value;
    }
    
    function set(string _value) public{
        value=_value;
    } 
}