//This is currently a working airdrop script! You call in an airdrop, attach it to a
// box, full of random loot/loot pools and it unlocks after a time. There are also
// a seize option for the bluefor!


player addAction ["Start Airdrop",
  {
  _a = 0;
  _clock = 10;
  systemChat "The AirDrop Event has Started!";
    while {_a == 0} do
    {
      hint format ["The airdrop will drop in %1 Seconds!", _clock];
      sleep 1;
      _clock = _clock - 1;
        if (_clock == 0) then
        {
          _a = 1;
          hint "The airdrop has been dropped at the location! It will unlock in 100 seconds!";
          _airdrop = createVehicle ["B_CargoNet_01_ammo_F", [14761.1,16475.1,100]];
          _parachute = createVehicle ["O_Parachute_02_F", [14761.1,16475.1,100]];
          _airdrop attachTo [_parachute, [0, 0, 0]];
          clearWeaponCargo _airdrop;
          clearMagazineCargo _airdrop;
          clearItemCargo _airdrop;
          //clearWeaponCargoGlobal would be needed for a MP setting!
          _airMarker = createMarker ["airdropLoc", _airdrop];
          _airMarker setMarkerType "o_med";
          _airMarker setMarkerText "Airdrop!";
          _airdrop lockInventory true;
          _odds = [1, 3] call BIS_fnc_randomInt; //You can add as many random loot pools as you wish I just have 1-3 here for example

              if (_odds == 1) then
              {
                _airdrop addWeaponCargo ["arifle_MXC_F", 8]; //Again, you would need to use addWeaponCargoGlobal in a MP setting
                _airdrop addMagazineCargo ["30Rnd_65x39_caseless_mag", 10];
                _airdrop addItemCargo ["optic_ARCO", 10];
              };

              if (_odds == 2) then
              {
                _airdrop addWeaponCargo ["arifle_MXC_F", 2];
                _airdrop addMagazineCargo ["30Rnd_65x39_caseless_mag", 10];
                _airdrop addItemCargo ["optic_ARCO", 10];
              };

              if (_odds == 3) then
              {
                _airdrop addWeaponCargo ["arifle_MXC_F", 4];
                _airdrop addMagazineCargo ["30Rnd_65x39_caseless_mag", 81];
                _airdrop addItemCargo ["optic_ARCO", 10];
              };

              //I chose to make loot pools for it can be a lot more balanced, but if you wanted to make a list of armor,guns items etc
              //and have a BIS_fnc_randomInt for those etc to make it truly random, its totally possible

          if (side player == WEST) then {
              _airdrop addAction ["Seize Airdrop",
                {
                  params ["_airdrop"];
                  _b = 0;
                  _clock1 = 15;
                  hint "You are seizing the airdrop!";
                  while {_b == 0} do {
                    _clock1 = _clock1 - 1;
                    sleep 1;
                      if (_clock1 == 0) then
                      {
                        deleteVehicle _airdrop;
                        hint "The airdrop has Seized! You received $X!";
                        _b = 1;
                  };
                };
                }];
            };
          _c = 0;
          _clock2 = 100;
          while {_c == 0} do
          {
            _clock2 = _clock2 - 1;
            sleep 1;
            //Totally optional if you want to add timer here for the countdown!
              if (_clock2 == 0) then
              {
                _airdrop lockInventory false;
                hint "The airdrop has been unlocked!";
                _c = 1;
              };
          };
        };
      };
  }];
