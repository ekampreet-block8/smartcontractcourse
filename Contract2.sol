pragma solidity ^0.5.1;

contract Contract2 {
    mapping(address => uint256) public balances;

    address payable wallet;

    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function buyToken() public payable {
        //Buy a buyToken
        balances[msg.sender] += 1;

        //send ether to the wallet
        wallet.transfer(msg.value);

    }
}
