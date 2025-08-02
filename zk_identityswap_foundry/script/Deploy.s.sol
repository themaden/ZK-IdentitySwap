// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../src/ProofVerifier.sol";
import "../src/PrivateSwap.sol";

contract Deploy {
    function run() external returns (PrivateSwap) {
        ProofVerifier verifier = new ProofVerifier();
        PrivateSwap swap = new PrivateSwap(address(verifier));
        return swap;
    }
}
