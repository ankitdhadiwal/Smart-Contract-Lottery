# Smart Contract Lottery

## Overview
This project is a decentralized lottery system built using Solidity smart contracts. Participants can enter the lottery by sending a specified amount of cryptocurrency, and a winner is randomly selected based on blockchain randomness.

## Features
- Users can enter the lottery by sending a fixed entry fee.
- Only the contract owner can start and end the lottery.
- A winner is selected randomly using a verifiable random function (VRF).
- The winner receives the total pool amount minus gas fees.
- Secure and transparent smart contract execution.

## Technologies Used
- Solidity
- Hardhat/Foundry (for development and testing)
- Chainlink VRF (for randomness)
- OpenZeppelin (for security enhancements)
- Ethereum (or any EVM-compatible blockchain)

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/smart-contract-lottery.git
   cd smart-contract-lottery
   ```
2. Install dependencies:
   ```sh
   npm install
   ```
3. Compile the contract:
   ```sh
   npx hardhat compile
   ```
4. Deploy to a test network:
   ```sh
   npx hardhat run scripts/deploy.js --network goerli
   ```

## Usage
- Run unit tests:
  ```sh
  npx hardhat test
  ```
- Start the lottery (only owner):
  ```sh
  npx hardhat run scripts/startLottery.js --network goerli
  ```
- Enter the lottery:
  ```sh
  npx hardhat run scripts/enterLottery.js --network goerli
  ```
- End the lottery and pick a winner:
  ```sh
  npx hardhat run scripts/endLottery.js --network goerli
  ```

## Security Considerations
- Chainlink VRF is used to ensure randomness.
- OpenZeppelin libraries are implemented for security best practices.
- Contract is optimized to prevent re-entrancy attacks.

## Future Improvements
- Implement front-end UI for easier interaction.
- Support for multiple lotteries simultaneously.
- Integrate with other blockchain networks.

## License
This project is licensed under the MIT License.

## Contributors
- [Your Name](https://github.com/yourusername)

Feel free to contribute by submitting issues or pull requests!

