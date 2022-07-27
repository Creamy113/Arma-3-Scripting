// Two AI needed for this script to work. 1 named pStart and 1 named pEnd.
// spawns at the airfield but can easily modify location
// Left a lot of global variables so that you can check with other scripts such as bank for ex to see if Pharma is happening
// if so, you can do an easy if (pCheck == 0) then {Start bank} else {hint "pharma is currently going "}; etc
// Medium and large have additional vehicles which assist the main truck that also get deleted after



pStart allowDamage false;
pStart disableAI "all";
pEnd allowDamage false;
pEnd disableAI "all";

pCheck = 0;

pStart addAction ["Start Small Pharma", {

    _c = 0;
    _clock = 5;
    if (pCheck == 0) then {
      if (playersNumber WEST == 3) then {
        if (side player == CIVILIAN) then {
          while {_c == 0} do {
            pCheck = 2;
            sleep 1;
            _clock = _clock - 1;
            hintSilent Format ["The truck will spawn in %1 seconds! ", _clock];
            if (_clock == 0) then {
              _c = 1;
                if (pCheck == 2) then {
                      Hint "The Small Pharma Truck has Spawned!";
                      ps = "I_Truck_02_transport_F" createVehicle [14622.3,16705.4,0.00143814];
                      ps setDir 50;
                      pCheck = 1;
                      pEnd addaction ["Sell Small Pharma", {
                          If (ps distance pEnd <= 15) then {
                                deleteVehicle ps;
                                pCheck = 0;
                                c1 = 0;
                                sleep 1;
                                hint "You where give X money";
                          } else {
                            hint "You are to far away!";
                            sleep 1;
                          };

                      },nil,1.5,true,true,"","true",5,false,"",""];

                      c1 = 1;
                      _clock1 = 600;
                        while {c1 == 1} do {
                          sleep 1;
                          _clock1 = _clock1 - 1;
                          hintSilent Format ["%1 Seconds to deliever!", _clock1];
                            if (damage ps == 1 || _clock1 == 0) then {
                              Hint "The Pharma has been destroyed!";
                              c1 = 0;
                              ps setDamage 1;
                              pCheck = 0;
                            };
                          };
                        }
                        else {
                          hint "Someone has already started a Pharma!";};

                      };
                    };
                  }
                  else {
                    hint "You shouldn't be doing that!";};
                  }
                 else {
                    hint "There are not enough cops online!";};
                };
},nil,1.5,true,true,"","true",5,false,"",""];





pStart addAction ["Start Medium Pharma", {
    _pCheck = 0;
    _c = 0;
    _clock = 5;
    if (_pCheck == 0) then {
      if (playersNumber WEST == 5) then {
        if (side player == CIVILIAN) then {
          while {_c == 0} do {
            _pCheck = 2;
            sleep 1;
            _clock = _clock - 1;
            hintSilent Format ["The truck will spawn in %1 seconds! ", _clock];
            if (_clock == 0) then {
              _c = 1;
                if (pCheck == 2) then {
                      Hint "The Medium Pharma Truck has Spawned!";
                      pm = "B_Truck_01_transport_F" createVehicle [14622.3,16705.4,0.00143814];
                      pm1 = "B_T_LSV_01_armed_F" createVehicle [14622.4,16729,0.00143814];
                      pm setDir 50;
                      pm1 setDir 50;
                      _pCheck = 1;

                      pEnd addaction ["Sell Medium Pharma", {
                        params ["_pCheck"];
                          If (pm distance pEnd <= 15) then {
                                deleteVehicle pm;
                                _pCheck = 0;
                                c1 = 0;
                                sleep 1;
                                hint "You where give X money";
                                sleep 1;
                                Hint "The Armed Truck will Blow in 15 Seconds!";
                                Sleep 15;
                                pm1 setDamage 1;
                          } else {
                            hint "You are to far away!";
                          };

                      },nil,1.5,true,true,"","true",5,false,"",""];

                      c1 = 1;
                      _clock1 = 600;
                        while {c1 == 1} do {
                          sleep 1;
                          _clock1 = _clock1 - 1;
                          hintSilent Format ["%1 Seconds to deliever!", _clock1];
                            if (damage pm == 1 || _clock1 == 0) then {
                              Hint "The Pharma has been destroyed!";
                              c1 = 0;
                              pm setDamage 1;
                              Hint "The Armed Truck will Blow in 15 Seconds!";
                              Sleep 15;
                              pm1 setDamage 1;
                              _pCheck = 0;
                            };
                          };
                        }
                        else {
                          hint "Someone has already started a Pharma!";};

                      };
                    };
                  }
                  else {
                    hint "Your a cop, you shouldn't be doing that!";};
                  }
                 else {
                    hint "There are not enough cops online!";};
                };
},nil,1.5,true,true,"","true",5,false,"",""];




pStart addAction ["Start Large Pharma", {
    _pCheck = 0;
    _c = 0;
    _clock = 5;
    if (_pCheck == 0) then {
      if (playersNumber WEST == 7) then {
        if (side player == CIVILIAN) then {
          while {_c == 0} do {
            _pCheck = 2;
            sleep 1;
            _clock = _clock - 1;
            hintSilent Format ["The truck will spawn in %1 seconds! ", _clock];
            if (_clock == 0) then {
              _c = 1;
                if (_pCheck == 2) then {
                      Hint "The Large Pharma Truck has Spawned!";
                      pl = "B_T_Truck_01_medical_F" createVehicle [14622.3,16705.4,0.00143814];
                      pl1 = "B_T_MRAP_01_F" createVehicle [14622.4,16729,0.00143814];
                      pl setDir 50;
                      pl1 setDir 50;
                      _pCheck = 1;
                      pEnd addaction ["Sell Large Pharma", {
                        params ["_pCheck"];
                          If (pl distance pEnd <= 15) then {

                                deleteVehicle pl;
                                _pCheck = 0;
                                c1 = 0;
                                sleep 1;
                                hint "You where give X money";
                                sleep 1;
                                Hint "The Armed Truck will Blow in 15 Seconds!";
                                Sleep 15;
                                pl1 setDamage 1;

                          } else {
                            hint "You are to far away!";
                          };

                      },nil,1.5,true,true,"","true",5,false,"",""];

                      c1 = 1;
                      _clock1 = 600;
                        while {c1 == 1} do {
                          sleep 1;
                          _clock1 = _clock1 - 1;
                          hintSilent Format ["%1 Seconds to deliever!", _clock1];
                            if (damage pl == 1 || _clock1 == 0) then {
                              Hint "The Pharma has been destroyed!";
                              c1 = 0;
                              pl setDamage 1;
                              Hint "The Armed Truck will Blow in 15 Seconds!";
                              Sleep 15;
                              pl1 setDamage 1;
                              _pCheck = 0;
                            };
                          };
                        }
                        else {
                          hint "Someone has already started a Pharma!";};

                      };
                    };
                  }
                  else {
                    hint "Your a cop, you shouldn't be doing that!";};
                  }
                 else {
                    hint "There are not enough cops online!";};
                };
},nil,1.5,true,true,"","true",5,false,"",""];
