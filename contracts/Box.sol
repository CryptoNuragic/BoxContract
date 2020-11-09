//main contract Box.sol
//In this contract, we are gonna let people store a value that can be later retrieved
//SPDX-license-Identifier: MIT
pragma solidity ^0.6.0;

//Importing the contract Ownable from OpenZeppelin library
import "@openzeppelin/contracts/access/Ownable.sol";

//Make Box inherit from Ownable
contract Box is Ownable {
  uint256 private value;

 event ValueChanged(uint256 newValue);

 // The onlyOwner modifier restricts who can call the store function
 function store(uint256 newValue) public onlyOwner {
   value = newValue;
   emit ValueChanged(newValue);
 }

 function retrieve() public view returns (uint256) {
   return value;
 }
}
