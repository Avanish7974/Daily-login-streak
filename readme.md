# Daily Login Streak with Token Rewards

## Project Title
**Daily Login Streak with Token Rewards**

## Project Description
The **Daily Login Streak with Token Rewards** contract incentivizes users to log in to the platform regularly. By implementing a login streak mechanism, this contract tracks users' daily login streaks and rewards them with tokens based on the length of their streak. Users are rewarded with tokens for each consecutive day they log in, and their streak resets if they miss a day. This system encourages user engagement and retention, rewarding active participants for their consistency.

## Contract Address
0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8

## Project Vision
The vision of this project is to create a simple, token-based engagement model that encourages regular user interaction through a login streak system. It is ideal for applications like gaming, content platforms, or decentralized social networks, where user engagement is key to success. The rewards system helps increase retention and incentivizes users to return daily to maintain their streaks.

## Key Features
- **Daily Login Streaks**: Tracks consecutive login days and rewards users based on their streak.
- **Token Rewards**: Users earn tokens for each day they log in consecutively.
- **Streak Reset**: If a user misses a login, their streak is reset to one.
- **Event Emission**: Each login and its associated reward are logged via an event (`Login`).
- **View User Streak and Balance**: The contract provides public functions to view the current streak and token balance of any user.






## Future Improvements
- **ERC-20 Token Integration**: The current implementation tracks balances, but no actual tokens are being transferred. Integrating ERC-20 token functionality can enable actual transfers of tokens to users.
- **Enhanced Reward System**: A dynamic reward system based on longer streaks or different types of engagement.
- **Gamification**: Adding achievements, bonuses, or penalties for missed logins to make the engagement model more game-like.

