// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract sample 
{ 


    int public iTest;
    string public sTest;

    function test() public {
        (iTest, sTest) = a(); 
     }

    function a() public returns (int a, string memory c) 
    { 
        return (1, "ss"); 
    } 

    function b() public 
    { 
        int A; 
        string memory B; 
      

        //A is 1 and B is "ss" 
        (A, B) = a(); 

        //A is 1 
        (A,) = a(); 

        //B is "ss" 
        (, B) = a();


    } 
} 

