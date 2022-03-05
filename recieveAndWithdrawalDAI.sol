// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.0;
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';


contract receiveAndWithdrawalDAI{

    address public admin;
    address tokenAddress = 0x97F1A42B8f8AED38dDDD2d5005f34Dc31D41F7b9;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, 'only admin');
        _;
    }

    function depositDAI(uint amount) external {
        IERC20(tokenAddress).transferFrom(
            msg.sender,
            address(this),
            amount
        );
    }

    function withdrawDAI(
        uint amount)
        external {
        IERC20(tokenAddress).transfer(msg.sender, amount);
    }

}
