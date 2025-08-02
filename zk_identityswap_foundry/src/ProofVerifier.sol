// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ProofVerifier {
    event ProofValidated(address indexed user);

    function verifyProof(uint256 walletHash1, uint256 walletHash2, uint256 secret, uint256 result) external pure returns (bool) {
        uint256 hash1 = (walletHash1 + secret) * (walletHash1 + secret);
        uint256 hash2 = (walletHash2 + secret) * (walletHash2 + secret);
        return result == (hash1 + hash2);
    }
}
