// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;
import '/contracts/Enums.sol';

contract callEnums {

    address EnumsAddress = 0xD7ACd2a9FD159E69Bb102A1ca21C9a3e3A5F771B;
    Enum EnumsContract  = Enum(EnumsAddress);
    Status public enumsResult;

    constructor () {}

    function testingCallingContract() public  {
        enumsResult = EnumsContract.status();
    }

}
