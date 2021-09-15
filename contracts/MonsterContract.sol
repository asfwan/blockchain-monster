pragma solidity >=0.4.22 <0.8.0;

contract MonsterContract {
    // Model a Monster
    struct Monster {
        uint id;
        string name;
        uint age;

        // stats
        uint elementType;
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
        monsters[monstersCount ++] = Monster(monstersCount, _name, 0, elementTypes[random() % elementTypes.length]);
    }

    function random() private view returns (uint) {
        // sha3 and now have been deprecated
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, ['a'])));
    }
}