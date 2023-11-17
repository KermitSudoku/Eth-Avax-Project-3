// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract mbtToken is ERC20 {
	
	address payable public contractOwner;
	
    constructor ( string memory name , string memory symbol ) ERC20 ( name, symbol ) {
	
		contractOwner = payable(msg.sender); 
		
        _mint ( msg.sender , 100 * 10**uint(decimals())); 
    }
	
	function mintTokens ( address recipient , uint256 amount ) external {
	
        require ( msg.sender == contractOwner , "Only the owner of the contract can mint tokens!"); 
		
        _mint ( recipient , amount ); 
    }
	
    function burnTokens ( uint256 amount ) external {
	
        _burn ( msg.sender, amount );
    }

    function transferTokens ( address recipient , uint256 amount ) public returns ( bool ) {
        
		return super.transfer( recipient , amount );
    }
}