// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../DexAuction.sol";

contract DexAuctionMock is DexAuction {
    uint256 public nowOverride;

    constructor(address payable _platformReserveAddress) public {}

    function setNowOverride(uint256 _now) external {
        nowOverride = _now;
    }

    function _getNow() internal override view returns (uint256) {
        return nowOverride;
    }
}
