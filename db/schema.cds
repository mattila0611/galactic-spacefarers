using { cuid, managed } from '@sap/cds/common';
namespace galactic;

entity SpacesuitColor : cuid {
    name: String(50);
    hexCode: String(7);
}

entity Planet : cuid, managed {
    name: String(100);
    gravity : Decimal(5,2);
    atmosphereBreathable : Boolean;
}

entity Department : cuid, managed {
    name: String(100);
    basePlanet : Association to Planet;
}


entity Position : cuid, managed {
    title: String(100);
    baseSalary : Decimal(10,2);
}

entity Spacefarer : cuid, managed {
    firstName        : String(50) @mandatory @title: 'First Name';
    lastName         : String(50) @mandatory @title: 'Last Name';
    originPlanet     : Association to Planet         @title: 'Origin Planet';
    spacesuitColor   : Association to SpacesuitColor @title: 'Spacesuit Color';
    department       : Association to Department     @title: 'Department';
    position         : Association to Position       @title: 'Position';
    stardustCollected: Integer @mandatory @title: 'Stardust Collected';
    wormholeSkill    : Integer @mandatory @title: 'Wormhole Skill';
}