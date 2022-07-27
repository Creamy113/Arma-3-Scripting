// This is my attempt at working with GUIs! They are like learning an entirely new
// form of code. I do have an understanding of how the buttons/creating works but
// this would be seen as the most difficult part for me currently.

// This script is a simple quest script that rewards money for completing a quest. We
// currently have a few quests for reloading, but you can easily replace this with
// killing, chopping, etc


reloadCounter = 0;

player addAction ["Open Dialog", {execVM "openDialog.sqf"}];

player addEventHandler ["Reloaded", {
      reloadcounter = reloadcounter + 1;
}];

player addAction ["Check", {hint format ["%1", reloadCounter];}];
