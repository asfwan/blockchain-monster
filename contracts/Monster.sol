pragma solidity >=0.4.22 <0.8.0;

contract Monster {
    // Model a Monster
    struct Monster {
        uint id;
        string name;
        uint age;
    }

    // Read/write monsters
    mapping(uint => Monster) public monsters;

    // Store Monsters Count
    uint public monstersCount;

    string[] public monsterNames = [
        "Bulbasaur",
        "Charmander",
        "Squirtle",
        "Pikachu",
        "Caterpie",
        "Weedle",
        "Pidgey",
        "Rattata"
    ];

    constructor () public {
        for(uint i = 0 ; i < monsterNames.length ; i++){
            addMonster(monsterNames[i]);
        }
    }

    function addMonster (string memory _name) private {
        monstersCount ++;
        monsters[monstersCount] = Monster(monstersCount, _name, 0);
    }
}