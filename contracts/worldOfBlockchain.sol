// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


contract Health {
    uint public health;

    constructor(uint initialHealth) {
        health = initialHealth;
    }

    function takeDamage(uint damage) public {
        health -= damage;
    }

    function heal(uint amount) public {
        health += amount;
    }
}


contract Mana {
    uint public mana;

    constructor(uint initialMana) {
        mana = initialMana;
    }

    function spendMana(uint amount) public {
        require(amount <= mana, "Not enough mana");
        mana -= amount;
    }

    function rechargeMana(uint amount) public {
        mana += amount;
    }
}


contract Hero is Health, Mana {
    uint public agility;
    uint public strength;
    uint public intelligence;

    constructor(uint initialHealth, uint initialMana, uint initialAgility, uint initialStrength, uint initialIntelligence) Health(initialHealth) Mana(initialMana) {
        agility = initialAgility;
        strength = initialStrength;
        intelligence = initialIntelligence;
    }

    
    function attack() public pure returns (uint) {
        
    }

    function defend() public pure returns (uint) {
        
    }
}


contract Knight is Hero {
    constructor(uint initialHealth, uint initialMana, uint initialAgility, uint initialStrength, uint initialIntelligence) Hero(initialHealth, initialMana, initialAgility, initialStrength, initialIntelligence) {}

    function specialAbility() public pure returns (string memory) {
        
        return "Knight's special ability: Charge!";
    }
}


contract Elf is Hero {
    constructor(uint initialHealth, uint initialMana, uint initialAgility, uint initialStrength, uint initialIntelligence) Hero(initialHealth, initialMana, initialAgility, initialStrength, initialIntelligence) {}

    function specialAbility() public pure returns (string memory) {
        
        return "Elf's special ability: Fire Summon!";
    }
}


contract Orc is Hero {
    constructor(uint initialHealth, uint initialMana, uint initialAgility, uint initialStrength, uint initialIntelligence) Hero(initialHealth, initialMana, initialAgility, initialStrength, initialIntelligence) {}

    function specialAbility() public pure returns (string memory) {
        
        return "Orc's special ability: Solidity Rage!";
    }
}