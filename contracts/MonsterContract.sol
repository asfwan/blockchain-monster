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
        uint[3] strengths;
        uint[3] weaknesses;
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

    enum ElementType{ VOID, GRASS, FIRE, WATER, ELECTRIC, EARTH }

    constructor () public {
        for(uint i = 0 ; i < monsterNames.length ; i++){
            addMonster(monsterNames[i]);
        }
    }

    function addMonster (string memory _name) private {
        uint[3] memory strengths = [uint(ElementType.WATER), uint(ElementType.EARTH), uint(ElementType.VOID)];
        uint[3] memory weaknesses;//[ElementType.EARTH];
        monsters[monstersCount ++] = 
            Monster(
                monstersCount,          // id
                _name,                   // name
                0,                      // age
                uint(ElementType.ELECTRIC),   // elementType
                1,                      // level
                11,                     // attack
                6,                      // defense
                2,                      // agility
                2,                      // dexterity
                strengths,              // strengths
                weaknesses              // weaknesses
            );
    }
}