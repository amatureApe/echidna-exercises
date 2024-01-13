// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.4.21;

import "./TokenWhaleChallenge.sol";

/// @dev Run the solution with
///      ```
///      solc-select use 0.8.0
///      echidna Test.sol
///      ```
contract Test is TokenWhaleChallenge {
    address echidna = msg.sender;

    constructor() {
        balances[echidna] = 1_000;
    }

    function echidna_test_balance() public view returns (bool) {
        return balances[echidna] <= 1_000_000;
    }
}
