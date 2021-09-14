var Monster = artifacts.require("./Monster.sol");

module.exports = function(deployer) {
  deployer.deploy(Monster);
};