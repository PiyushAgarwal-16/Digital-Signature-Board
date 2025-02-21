pragma solidity ^0.8.0;

contract PetitionBoard {
    mapping(address => bool) public signatures;
    address[] public signers;

    function signPetition() external {
        require(!signatures[msg.sender], "Already signed");
        signatures[msg.sender] = true;
        signers.push(msg.sender);
    }

    function getSigners() external view returns (address[] memory) {
        return signers;
    }
}
