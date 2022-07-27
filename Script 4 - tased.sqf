_clock = 5;
_c = 0;
while {_c == 0} do {
  sleep 1;
  _clock = _clock - 1;
  testDummie playMoveNow "AinjPpneMstpSnonWrflDnon";
  if (_clock == 0) then
  {
    _c = 1;
    testDummie allowDammage true;
//    testDummie playActionNow "WalkF";
  };
};
