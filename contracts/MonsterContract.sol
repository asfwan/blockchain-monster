pragma solidity >=0.4.22 <0.8.0;

contract MonsterContract {
    // Model a Monster
    struct Monster {
        uint id;
        string name;
        uint age;

        // common stats
        ElementType elementType;
        uint level;

        // extended stats
        uint attack;
        uint defense;
        uint agility;
        uint dexterity;
        ElementType[3] strengths;
        ElementType[3] weaknesses;
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
        ElementType elementType = ElementType.ELECTRIC;
        ElementType[3] memory strengths = [(ElementType.WATER), (ElementType.EARTH), (ElementType.VOID)];
        ElementType[3] memory weaknesses = getWeaknesses(elementType);
        monsters[monstersCount ++] = 
            Monster(
                monstersCount,          // id
                _name,                   // name
                0,                      // age
                elementType,   // elementType
                1,                      // level
                11,                     // attack
                6,                      // defense
                2,                      // agility
                2,                      // dexterity
                strengths,              // strengths
                weaknesses              // weaknesses
            );
    }

    function getWeaknesses (ElementType elementType) private returns (ElementType[3] memory) {
        if(elementType == ElementType.FIRE){
            return [ElementType.WATER, ElementType.EARTH, ElementType.VOID];
        }else if(elementType == ElementType.WATER){
            return [ElementType.ELECTRIC, ElementType.GRASS, ElementType.VOID];
        }else if(elementType == ElementType.GRASS){
            return [ElementType.FIRE, ElementType.EARTH, ElementType.VOID];
        }else if(elementType == ElementType.EARTH){
            return [ElementType.WATER, ElementType.GRASS, ElementType.VOID];
        }else if(elementType == ElementType.ELECTRIC){
            return [ElementType.EARTH, ElementType.VOID, ElementType.VOID];
        }else{
            return [ElementType.VOID, ElementType.VOID, ElementType.VOID];
        }
    }
}