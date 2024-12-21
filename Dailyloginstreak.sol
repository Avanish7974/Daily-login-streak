// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DailyLoginStreak {
    // Mapping to track user streaks and last login
    mapping(address => uint256) public streaks;
    mapping(address => uint256) public lastLogin;

    // Mapping to track token balances
    mapping(address => uint256) public balances;

    // Event for login
    event Login(address indexed user, uint256 streak, uint256 reward);

    // Login function
    function login() public {
        uint256 currentTime = block.timestamp;

        // Check if user logged in within the last 24-48 hours
        if (lastLogin[msg.sender] > 0 && currentTime <= lastLogin[msg.sender] + 1 days) {
            streaks[msg.sender] += 1; // Increment streak
        } else {
            streaks[msg.sender] = 1; // Reset streak
        }

        lastLogin[msg.sender] = currentTime; // Update last login time

        // Reward tokens based on the streak
        uint256 reward = 10 * streaks[msg.sender]; // Example: 10 tokens per streak day
        balances[msg.sender] += reward;

        // Emit event
        emit Login(msg.sender, streaks[msg.sender], reward);
    }

    // View user's current streak
    function getStreak(address user) public view returns (uint256) {
        return streaks[user];
    }

    // View user's token balance
    function getBalance(address user) public view returns (uint256) {
        return balances[user];
    }
}
