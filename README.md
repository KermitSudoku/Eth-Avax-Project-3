# Simple ERC20 Tokens

This is a simple program that utilizes the ERC20 library that mints, burns, and transfers tokens.

## Getting Started

### Source Code Content

This contract contains the following components:

1. **Token Details**:
	- The contract has a state variable to store the Ethereum address of the contract owner (`contractOwner`).

2. **Constructor**:
	- The constructor sets the `owner` to the Ethereum address of the account that deploys the contract.
	- It has the `_mint` function inherited from the the ERC20 solidity file to instantiate the contract owner with 100 Ether.
	
3. **mintTokens function**:
	- This function has the `require` statement which restricts the function to only be able to be called by the contract owner.
	- The `_mint` function is present again, but this time, controlled by the owner of the contract. 

4. **burnTokens function**:
	- This function has the `_burn` function inherited from the ERC20 solidity file to reduce the number of balance from an address.

5. **transferTokens function**:
	- This function has the `transfer` function inherited from the ERC20 solidity file to transfer balance from the user's address to another address.

### Executing the program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/. 

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token.sol). Copy and paste the code from [here](https://github.com/KermitSudoku/Eth-Avax-Project-3/blob/main/Metacrafters-Eth%2BAvax-Prjct-3.sol) into the file: 

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "token.sol" button. 

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "mbtToken" contract from the dropdown menu, and then click on the "Deploy" button. 

### Using the program

Once the contract is deployed, you can interact with it by calling the setVal function. Click on the `mbtToken` contract in the left-hand sidebar so you can begin. 

You can now interact with the other functions provided that you know and/or have the addresses that you want the functions to transact with and the amount of tokens that you want to use with the functions. 

## Authors

Contributors names and contact info

Jarod Jangcan
[KermitSudoku](https://github.com/KermitSudoku)

