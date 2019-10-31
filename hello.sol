pragma solidity ^0.5.12;

contract HelloWorld {
  
  string greet;
  
  constructor() public{
      greet = 'HelloWorld';
  }
  
  function getMessage() public view returns(string memory){
      return greet;
  }
}
