var Monster = artifacts.require("MonsterContract");
var Adoption = artifacts.require("Adoption");

module.exports = function(deployer) {
  deployer.deploy(Monster);
  deployer.deploy(Adoption);
};