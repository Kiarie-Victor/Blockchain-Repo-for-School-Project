# 🗳️ Blockchain Voting Smart Contract

This repository contains the smart contract and Truffle project used to integrate blockchain technology into a Django-based school delegate voting system.

## 📦 Project Structure

```
voting-contract/
├── contracts/
│   └── Voting.sol          # Main smart contract
├── migrations/
│   └── 1_deploy_voting.js  # Deployment script
├── test/
│   └── voting.test.js      # Optional tests
├── truffle-config.js       # Truffle configuration
├── package.json
└── README.md
```

## 🔧 Prerequisites

* [Node.js](https://nodejs.org/)
* [Ganache](https://trufflesuite.com/ganache/)
* [Truffle](https://trufflesuite.com/)

Install Truffle globally:

```bash
npm install -g truffle
```

## 🚀 Setup Instructions

1. **Clone the Project**

   ```bash
   git clone <your-repo-url>
   cd voting-contract
   ```

2. **Install Dependencies**

   ```bash
   npm install
   ```

3. **Start Ganache**

   Open Ganache (GUI or CLI) and start a local blockchain. Copy the RPC server URL (usually `http://127.0.0.1:7545`).

4. **Compile the Contract**

   ```bash
   truffle compile
   ```

5. **Migrate (Deploy) the Contract**

   ```bash
   truffle migrate --network development
   ```

6. **Interact with Django**

   The deployed contract’s address and ABI are used in your Django project (via `web3.py`) to send and retrieve vote transactions.

   Make sure the following settings in Django are updated:

   * `CONTRACT_ADDRESS`
   * `CONTRACT_ABI`
   * `GANACHE_URL`

## 🧪 Running Tests (Optional)

```bash
truffle test
```

## 📡 Integration Notes

* The Django backend sends vote transactions via Web3 using a private key from the admin wallet configured in `.env`.
* Blockchain data such as transaction hash, block number, sender, receiver, gas used, and status are stored in the `Vote` model after each successful transaction.

## 📁 ABI & Contract Address

After deploying the contract, copy the ABI and contract address into your Django settings or a JSON file that Django reads for contract interaction.

## 🔐 Security Considerations

* Only the Django backend signs transactions using a private key. Never expose private keys in frontend code.
* Use `.env` to store sensitive credentials.

## 📚 License

This project is for educational and prototyping purposes only. Use with caution in production environments.