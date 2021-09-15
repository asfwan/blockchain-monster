var Monster = artifacts.require("./MonsterContract.sol");

contract("MonsterContract", function(accounts) {
  var monsterInstance;

  it("initializes with eight monsters", function() {
    return Monster.deployed().then(function(instance) {
      return instance.monstersCount();
    }).then(function(count) {
      assert.equal(count, 8);
    });
  });

  it("it initializes the monsters with the correct values", function() {
    return Monster.deployed().then(function(instance) {
      monsterInstance = instance;
      for(i=0;i<monsterInstance.monsters.length;i++){
        console.log(monsterInstance.monsters(i)[1]);
      }
      // console.log(monster);
    });
    // .then(function(monster) {
    //   assert.equal(monster[0], 1, "contains the correct id");
    //   assert.equal(monster[1], "Monster 1", "contains the correct name");
    //   assert.equal(monster[2], 0, "contains the correct votes count");
    //   return monsterInstance.monsters(2);
    // }).then(function(monster) {
    //   assert.equal(monster[0], 2, "contains the correct id");
    //   assert.equal(monster[1], "Monster 2", "contains the correct name");
    //   assert.equal(monster[2], 0, "contains the correct votes count");
    // });
  });
});