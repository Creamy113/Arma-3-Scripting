arrest1 = testDummie addAction ["Arrest",
{
    a = 1;
    execVM "escort.sqf";
    testDummie removeAction arrest1;

    myID = testDummie addAction ["Stop Arrest",
    {
      a = 0;
      testDummie removeAction myID;
      testDummie removeAction myID0;
      execVM "arrest.sqf";
    },nil,1.5,true,true,"","true",5,false,"",""];

    while {a == 1} do
    {
      testDummie playMoveNow "AmovPercMstpSnonWnonDnon_EaseIn";
    };

},nil,1.5,true,true,"","true",5,false,"",""];
