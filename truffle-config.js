module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",     // Ganache RPC server
      port: 8545,            // Ganache RPC port
      network_id: "1337",
      chain_id: 1337     // Match Ganache network id
    },
  },

  // Configure Solidity compiler version
  compilers: {
    solc: {
      version: "0.8.30"
    }
  }
};
