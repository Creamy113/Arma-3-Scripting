//This is an arrest/restain script that locks the person in the animation until unrestained,
// you can also escort the person once restained. You can also tase ppl with guns with this script!

//To make this work on a MP session, I would replace testDummie with allPlayers who
// are tased == ability to be restrained/arrested, but in this senario, I did not have
// another person to test it on :(

a = 0;
b = 0;


  testDummie addEventHandler ["Dammaged", {
  	params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];
    systemChat "he is hit";
    _dmg = _this select 2;
    if (_dmg == 1) then
      {
          testDummie setDamage .99;
          testDummie allowDammage false;
          b = 1;
          };
    }];

while {true} do {
  sleep .25;
  while {b == 1} do {
    execVM "tased.sqf";
    execVM "arrest.sqf";
    b = 0;
    sleep 5;
  };
};
