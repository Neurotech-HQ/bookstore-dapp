// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract BuyBook {
    address[16] public buyers;

    // Function to buy a book
    function buy(uint256 bookID) public returns (uint256) {
        require(bookID >= 0 && bookID <= 15);
        buyers[bookID] = msg.sender;
        return bookID;
    }

    // Function to retrieve book buyers
    function getBuyers() public view returns (address[16] memory) {
        return buyers;
    }
}
