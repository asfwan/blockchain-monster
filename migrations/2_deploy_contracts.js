// var Monster = artifacts.require("MonsterContract");
var Purchase = artifacts.require("Purchase");

module.exports = function(deployer) {
  // deployer.deploy(Monster);
  deployer.deploy(Purchase);
};