// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.8.7 <0.9.0;

import '../../utils/Multicall.sol';

contract MulticallMock is Multicall {
  function sendEthToAddress(address payable _recipient, uint256 _amount) external payable {
    _recipient.transfer(_amount);
  }
}
