// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./ProofVerifier.sol";

contract PrivateSwap {
    ProofVerifier public verifier;
    mapping(uint256 => bool) public nullifierUsed;

    event SwapExecuted(address indexed sender, address indexed to, uint256 amount);

    constructor(address _verifier) {
        verifier = ProofVerifier(_verifier);
    }

    function privateSwap(
        address to,
        uint256 amount,
        uint256 wallet1,
        uint256 wallet2,
        uint256 secret,
        uint256 result,
        uint256 nullifier
    ) external payable {
        require(!nullifierUsed[nullifier], "Nullifier already used");

        bool valid = verifier.verifyProof(wallet1, wallet2, secret, result);
        require(valid, "Invalid ZK proof");

        nullifierUsed[nullifier] = true;

        payable(to).transfer(amount);
        emit SwapExecuted(msg.sender, to, amount);
    }

    receive() external payable {}
}
