// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Test.sol"; // Importando o framework de testes
import "../src/FundMe.sol";  // Importando o contrato FundMe.sol

contract FundMeTest is Test {
    FundMe fundMe;
    address user = address(0x123); // Endereço fictício para testar

    function setUp() public {
        // Deploy do contrato antes de cada teste
        fundMe = new FundMe();
    }

    function testFund() public {
        uint256 initialBalance = address(fundMe).balance;

        // Envia 1 ETH para o contrato
        fundMe.fund{value: 1 ether}();

        // Verifica se o saldo foi atualizado
        assertEq(address(fundMe).balance, initialBalance + 1 ether);
    }
}
