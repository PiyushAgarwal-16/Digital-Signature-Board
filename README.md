# PetitionBoard

## Overview
PetitionBoard is a smart contract that enables users to sign a petition on-chain. Each signer is recorded only once to ensure uniqueness. This contract is deployed on **Edu Chain**.

## Features
- 📜 Collects digital signatures for petitions.
- 🔒 Ensures each address can sign only once.
- 📝 Stores the list of signers on-chain.
- 🔍 Provides a function to retrieve all signers.

## Deployment Details
- **Deployed Address:** `0x6951ED35Bac1dcCC413a190C239643dCeBf1c898`
- **Network:** Edu Chain

## Smart Contract Functions
```solidity
// Function to sign the petition
function signPetition() external;

// Function to retrieve all recorded signers
function getSigners() external view returns (address[] memory);
```

## Usage
1. Call `signPetition()` from a compatible wallet to add your signature.
2. Call `getSigners()` to retrieve the list of addresses that have signed the petition.

## Installation & Interaction
To interact with the smart contract, use a blockchain wallet or a Web3-enabled application such as Remix, Hardhat, or Ethers.js.

```sh
// Example using Ethers.js
const contract = new ethers.Contract(contractAddress, contractABI, signer);
await contract.signPetition();
const signers = await contract.getSigners();
console.log(signers);
```

## License
This project is licensed under the **MIT License**.
Github change