// Layout of contracts : 
// version
// imports
// errors
// interfaces, libraries, contracts 
// Type declarations
// State Variables
// Events
// Modifiers
// Functions

//Layout of Functions
//constructor
//recieve function(if exists)
//fallback function (if exists)
// external
// public 
// internal 
// private
// view and pure functions

// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/**
 * @title A Sample Raffle Contract 
 * @author Ankit Dhadiwal
 * @notice This contract is just for learning and exploring purposes 
 * @dev Implements chainlink VRFv2.5
 */ 

contract Raffle {
    error Raffle__SendMoreToEnterRaffle();

    uint256 private immutable i_entranceFee;
    uint256 private immutable  i_interval;
    address payable[] private s_players;
    uint256 private s_lastTimeStamp;

    // Events
    event RaffleEntered(address indexed player);

    constructor(uint256 entranceFee, uint256 interval) {
        i_entranceFee = entranceFee;
        i_interval = interval;
        s_lastTimeStamp = block.timestamp;
    }


    function enterRaffle() public payable {
        if(msg.value < i_entranceFee) {
            revert Raffle__SendMoreToEnterRaffle();
        }
        s_players.push(payable(msg.sender));
        emit RaffleEntered(msg.sender);
    }


    function pickWinner() external {
        if ((block.timestamp - s_lastTimeStamp) < i_interval) {
            revert();
        }
        requestId = s_vrfCoordinator.requestRandomWords(
            VRFV2PlusClient.RandomWordsRequest({
                keyHash: s_keyHash,
                subId: s_subscriptionId,
                requestConfirmations: requestConfirmations,
                callbackGasLimit: callbackGasLimit,
                numWords: numWords,
                extraArgs: VRFV2PlusClient._argsToBytes(
                    VRFV2PlusClient.ExtraArgsV1({nativePayment: false})
                )
            })
        )
    }

    function getEntranceFee() external view returns (uint256) {
        return i_entranceFee;
    }
}