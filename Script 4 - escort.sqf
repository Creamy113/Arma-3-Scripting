myID0 = testDummie addAction ["Escort",
{
  testDummie attachTo [player, [0, 1, 0]];
  testDummie removeAction myID0;

  myID1 = testDummie addAction ["Stop Escort",{
        detach testDummie;
        testDummie removeAction myID1;
        execVM "escort.sqf";
      },nil,1.5,true,true,"","true",5,false,"",""];

},nil,1.5,true,true,"","true",5,false,"",""];
