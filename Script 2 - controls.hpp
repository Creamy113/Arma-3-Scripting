class questDialog
{
  idd = 5555;

  class controls
  {
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT START (by Creamy, v1.063, #Hemugi)
    ////////////////////////////////////////////////////////
    class frame1: RscPicture
    {
    	idc = 1200;
    	text = "#(argb,8,8,3)color(1,1,1,1)";
    	x = 0.396875 * safezoneW + safezoneX;
    	y = 0.269 * safezoneH + safezoneY;
    	w = 0.20625 * safezoneW;
    	h = 0.44 * safezoneH;
    };
    class button1: RscButton
    {
    	idc = 1600;
    	text = "Complete Quest"; //--- ToDo: Localize;
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.533 * safezoneH + safezoneY;
    	w = 0.0567187 * safezoneW;
    	h = 0.066 * safezoneH;
      action = "execVM 'quest.sqf'";
    };
    class listBox1: RscListbox
    {
    	idc = 1500;
    	x = 0.438125 * safezoneW + safezoneX;
    	y = 0.291 * safezoneH + safezoneY;
    	w = 0.12375 * safezoneW;
    	h = 0.231 * safezoneH;
    };
    class button2: RscButton
    {
    	idc = 1601;
    	text = "Close"; //--- ToDo: Localize;
    	x = 0.505156 * safezoneW + safezoneX;
    	y = 0.533 * safezoneH + safezoneY;
    	w = 0.0567187 * safezoneW;
    	h = 0.066 * safezoneH;
      action = closeDialog 2;
    };
    ////////////////////////////////////////////////////////
    // GUI EDITOR OUTPUT END
    ////////////////////////////////////////////////////////
  };

};
