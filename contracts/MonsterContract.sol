pragma solidity >=0.4.22 <0.8.0;

contract MonsterContract {
    // Model a Monster
    struct Monster {
        uint id;
        string name;
        uint age;

        // common stats
        uint elementType;
        uint level;

        // extended stats
        uint attack;
        uint defense;
        uint agility;
        uint dexterity;
        uint[] strengths;
        uint[] weaknesses;
    }

    // Read/write monsters
    mapping(uint => Monster) public monsters;

    // Store Monsters Count
    uint public monstersCount;

    string[] public monsterNames = [
        "Bulbasaura",
        "Charmandera",
        "Squirtlea",
        "Pikachua",
        "Caterpiea",
        "Weedlea",
        "Pidgeya",
        "Rattataa"
    ];

    enum ElementType{ GRASS, FIRE, WATER, ELECTRIC }

    constructor () public {
        for(uint i = 0 ; i < monsterNames.length ; i++){
            addMonster(monsterNames[i]);
        }
    }

    function addMonster (string memory _name) private {
        Stats memory stats;
        monsters[monstersCount ++] = Monster(monstersCount, _name, 0, ElementType.ELECTRIC, stats);
    }
}