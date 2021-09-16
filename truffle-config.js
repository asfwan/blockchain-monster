var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "kit place ability symbol arena wagon film seek cousin alpha evil sock";
module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*", // Match any network id
      gas:   290000
    },
    ropsten:  {
      network_id: 3,
      host: "localhost",
      port:  8545,
      gasPrice: 0x01,
      gas:   200000,
      // blockLimit: 10000,
      from: "0x147Dd0CdcAE4F48620dc5c4F6b09e343b21c78EC",  
    },
    rinkeby: {
      provider: function() { 
       return new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/v3/30a46a8bd6c542959f5f8937c41b01e2");
      },
      network_id: 4,
      gas: 4500000,
      gasPrice: 10000000000,
    },
    develop: {
      port: 8545
    }
  },
  compilers: {
    solc: {
        version: "0.5.15", // Fetch exact version from solc-bin (default: truffle's version)
        settings: { // See the solidity docs for advice about optimization and evmVersion
            optimizer: {
                enabled: true,
                runs: 200
            }
        }
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
};
