## Solving Ethernaut quests using Foundry

Solidity code I write to solve Ethernaut quest https://ethernaut.openzeppelin.com/ on Sepolia test network. The rep is updated accordingly to the solving process.

# Getting Started

## Requirements

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
- [foundry](https://getfoundry.sh/)
  - You'll know you did it right if you can run `forge --version` and you see a response like `forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)`

## Quickstart

```
git clone https://github.com/mibiot/ethernaut-solv
cd ethernaut-solv
forge build
```
# Usage

1. Create an instance of a contract at https://ethernaut.openzeppelin.com/ . Solutions to the levels can be found under Script folder. Each Level-contract has a script to solve the set tasks to complite the level. 
3. Change the instance address in the script that solves particular level.
2. Run the script: forge script *(ScriptName)* --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast. Some levels require additional interactions with some contracts using "cast..."
3. Submit the instance at https://ethernaut.openzeppelin.com/


# Thank you!
