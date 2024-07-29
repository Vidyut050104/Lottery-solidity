// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 <0.9.0;

// Creating a new smart contract
contract lottery{ 
    address public Manager;   // Creating a new address as Manager
    address payable[] public Participants;   // Creating a new address as participants

    constructor(){
        Manager=msg.sender;  // Initialising Manager as the sender

    }
    receive() external payable{
        require(msg.value==0.2 ether);     
        Participants.push(payable(msg.sender));
    }
    function getBal()public view returns(uint){
        require(msg.sender==Manager);   // Only manager can see the balance
        return address(this).balance;
    }
    function random()public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,Participants.length)));    // Algorithm to generate random hexadecimal digit
    }
    // Main Function
    function selectWinner()public{
        require(msg.sender==Manager);
        require(Participants.length>=3);
        uint r=random();
        uint index=r % Participants.length;
        address payable winner;
        winner=Participants[index];
        winner.transfer(getBal());
    }
}
