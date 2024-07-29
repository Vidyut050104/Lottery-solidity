Lottery Smart Contract
This is a simple lottery smart contract implemented in Solidity. The contract allows participants to enter the lottery by sending 2 Ether. Once there are at least 3 participants, the manager can randomly select a winner who will receive the entire balance of the contract.

Features
Manager: The creator of the contract who has special permissions to view the balance and select a winner.
Participants: Users who enter the lottery by sending 2 Ether to the contract.
Random Winner Selection: A winner is chosen randomly using the keccak256 hash function.

Prerequisites
Solidity compiler version >=0.5.0 <0.9.0
Ethereum wallet with sufficient Ether for testing
Ethereum test network (e.g., Rinkeby, Ropsten) for deployment
Deployment
Compile the smart contract using Remix or another Solidity compiler.
Deploy the contract to an Ethereum test network.
Note the deployed contract address.
Usage
Enter the Lottery
Participants can enter the lottery by sending exactly 2 Ether to the contract's address. This can be done using any Ethereum wallet that supports sending Ether to a smart contract.

Get Contract Balance
The manager can view the current balance of the contract by calling the getBal function.

Select a Winner
The manager can select a winner once there are at least 3 participants by calling the selectWinner function. The winner will receive the entire balance of the contract.

License
This project is licensed under the GPL-3.0 License - see the LICENSE file for details.

Disclaimer
This smart contract is for educational purposes only. Use it at your own risk.
