// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract betContract {

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    //Send ether from the account connected with this function
    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }

    //Withdraw Ether from the contract
    function withdrawETH(address payable recipient, uint256 amount) public {
    (bool succeed, bytes memory data) = recipient.call{value: amount}("");
    require(succeed, "Failed to withdraw Ether");
}
 
}
