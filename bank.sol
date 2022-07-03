// SPDX-License-Identifier: MIT
pragma solidity ^0.4.19;

contract atm{

    uint balance;
    uint amount;    
    constructor() public {
      balance = 1111;   
   }
    function getbalance() constant public returns(uint) {
        return balance;
    }

    function setbalance(uint newbalance) public returns (uint) {
        balance = newbalance;
        return balance;
    }

    function depgetamount() constant public returns (uint){
        return amount;
    }    

    function depsetamount(uint amount)public returns (uint){
        balance = balance + amount;
        return balance; 
    }

    function withgetamount() constant public returns (uint){
        return amount;
    }    

    function withsetamount(uint amount)public returns (uint){
        if(balance > amount){ 
            balance = balance - amount;
        return balance; 
        }
        else{
            return balance;
        }
    }
}
