
_index = lbCurSel 1500;


if (_index == 0) then {
    if (reloadCounter == 3) then {
      hint "you have been rewarded $5000";
      lbSetColor [1500, 0, [1, 1, 0, 1]];
      } else {
        hint "You have not completed this quest!";
      };
    };

if (_index == 1) then {
    if (reloadCounter == 5) then {
      hint "you have been rewarded $10000";
      lbSetColor [1500, 0, [1, 1, 0, 1]];
      } else {
        hint "You have not completed this quest!";
      };
    };

if (_index == 2) then {
    if (reloadCounter == 7) then {
      hint "you have been rewarded $15000";
      lbSetColor [1500, 0, [1, 1, 0, 1]];
      } else {
        hint "You have not completed this quest!";
      };
    };

if (_index == 3) then {
    if (reloadCounter == 9) then {
      hint "you have been rewarded $20000";
      lbSetColor [1500, 0, [1, 1, 0, 1]];
      } else {
        hint "You have not completed this quest!";
      };
    };
if (_index == 4) then {
    if (reloadCounter == 15) then {
      hint "you have been rewarded $25000";
      lbSetColor [1500, 0, [1, 1, 0, 1]];
      } else {
        hint "You have not completed this quest!";
      };
    };
