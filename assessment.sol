// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract MyToken {

// public variables here
string public tname;
string public abbr;
uint public funds;
// mapping variable here
mapping (address => uint) public balances;

constructor (string memory _name, string memory _abbr, uint fund) {
    tname = _name;
    abbr = _abbr;
    funds = fund;
    balances[msg.sender] += fund;
}
// mint function
function minting(address addr, uint amount) public
{
    funds += amount;
    balances[addr] += amount;
}
// burn function
function burn (address add, uint amount) public {
    if(balances[add] >= amount)
    {
        balances[add] -= amount;
        funds -= amount;
    }
}
}
