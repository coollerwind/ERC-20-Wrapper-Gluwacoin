[![license](https://img.shields.io/github/license/jamesisaac/react-native-background-task.svg)](https://opensource.org/licenses/MIT)

# ERC-20 Wrapper Gluwacoin

ERC-20 to Gluwacoin Adapter

## What is Gluwacoin?

Gluwacoin is an interoperable stablecoin standard. The standard has built-in functions to enable exchange with other cryptocurrencies, which connects its ecosystem to other blockchains. We have implemented the system to support the ERC20 standard on the Ethereum network. The implementation includes security features, compliance features, and upgrade features that provide the desired level of security and elasticity.

The Gluwacoin Trust proposed the standard. This repository is the official implementations of the Gluwacoin standard by Gluwa.

For more information, see [Gluwacoin](/Gluwacoin.md), [gluwacoin.com](https://gluwacoin.com), or the [original whitepaper](https://gluwacoin.com/white-paper).

## Types

This repository is composed of two different type of Gluwacoin: Controlled and ERC-20 Wrapper.

### ERC-20 Wrapper Gluwacoin

Gluwacoin backed by another [ERC-20](https://eips.ethereum.org/EIPS/eip-20) token

Read [ERC-20 Wrapper Gluwacoin](ERC-20%20Wrapper%20Gluwacoin.md) for details.

## Setup

### Installing Dependencies

```commandline
$ npm install
```

#### Initializing the openzeppelin project
```commandline
$ npx oz init
```

#### Linking the Contracts Ethereum Package

You need this for local testing. We will use a preset of ERC20 to use as a base token for the ERC-20 Wrapper Gluwacoin.

```commandline
$ npx oz link @openzeppelin/contracts-ethereum-package
```

#### Run a local testnet

Let’s deploy an ERC20 token contract to our development network.
Make sure to have a Ganache instance running, or start one by running:
```commandline
$ npx ganache-cli --deterministic
```
Note that the current version of Ganache does not work on `Node 14`.
We are using `Node 12`.
https://github.com/trufflesuite/ganache-cli/issues/732

#### Deploy ERC20Wrapper token
```commandline
$ npx oz deploy
Nothing to compile, all contracts are up to date.
? Choose the kind of deployment upgradeable
? Pick a network development
? Pick a contract to deploy ERC20WrapperGluwacoin
All implementations are up to date
? Call a function to initialize the instance after creating it? Yes
? Select which function initialize(name: string, symbol: string, decimals: uint8, token: address)
? name: string: Gluwacoin
? symbol: string: G
? decimals: uint8: 18
? token: address: [ADRESS OF THE CONTRACT]
✓ Instance created at [ADRESS OF THE GLUWACOIN CONTRACT]
To upgrade this instance run 'oz upgrade'
[ADRESS OF THE GLUWACOIN CONTRACT]
```

