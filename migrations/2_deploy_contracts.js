var Monster = artifacts.require("./MonsterContract.sol");

module.exports = function(deployer) {
  deployer.deploy(Monster);
};