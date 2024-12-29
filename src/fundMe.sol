// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe {
    mapping(address => uint256) public addressToAmountFunded;
    address[] public funders;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value > 0, "Envie um valor maior que zero!");

        if (addressToAmountFunded[msg.sender] == 0) {
            funders.push(msg.sender);
        }

        addressToAmountFunded[msg.sender] += msg.value;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Apenas o proprietario pode executar esta funcao!");
        _;
    }
}
