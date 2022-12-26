/// @description Insert description here

event_inherited();

var
_this = id;

#region //mid arm

    with place(obj_part){
        
        name = "ZAN-414/SLA";
        tag = "Middleweight";
        
        wCost = 1400;
        eCost = 1510;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAN-S0";
        tag = "Middleweight";
        
        wCost = 1056;
        eCost = 881;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAN-CEX";
        tag = "Middleweight";
        
        wCost = 1238;
        eCost = 1396;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "ZAN-616/AUR";
        tag = "Middleweight";
        
        wCost = 1347;
        eCost = 1204;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAN-2112";
        tag = "Middleweight";
        
        wCost = 1243;
        eCost = 920;
        
        array_push(_this.parts, id);
        
    }

#endregion

#region //light arm

    with place(obj_part){
        
        name = "ZAN-202/TEM";
        tag = "Lightweight";
        
        wCost = 854;
        eCost = 684;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAN-02-BG";
        tag = "Lightweight";
        
        wCost = 887;
        eCost = 855;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "ZAN-303/S";
        tag = "Lightweight";
        
        wCost = 698;
        eCost = 793;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAN-1111";
        tag = "Lightweight";
        
        wCost = 906;
        eCost = 932;
        
        array_push(_this.parts, id);
        
    }

#endregion

#region //heavy arm

    with place(obj_part){
        
        name = "ZAN-707/E";
        tag = "Heavyweight";
        
        wCost = 1684;
        eCost = 1278;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAN-MWZ";
        tag = "Heavyweight";
        
        wCost = 1527;
        eCost = 1100;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "ZAN-004/B";
        tag = "Heavyweight";
        
        wCost = 2020;
        eCost = 1420;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "ZAN-AX/VISE";
        tag = "Heavyweight";
        
        wCost = 1490;
        eCost = 1694;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAN-MKHS";
        tag = "Heavyweight";
        
        wCost = 1790;
        eCost = 1373;
        
        array_push(_this.parts, id);
        
    }

#endregion

#region //wep arm

    with place(obj_part){
        
        name = "ZAW-2/SAMURAI";
        tag = "Dual Blades";
        
        wCost = 1418;
        eCost = 86;
        
        base = false;
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAW-MG-03";
        tag = "Machine Gun";
        
        wCost = 1530;
        eCost = 85;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAW-BZD";
        tag = "Bazooka";
        
        wCost = 1325;
        eCost = 109;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAW-DC10";
        tag = "Grenade Launcher";
        
        wCost = 1733;
        eCost = 240;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "ZAW-XP/T9";
        tag = "Plasma Cannon";
        
        wCost = 1900;
        eCost = 491;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "ZAW-SPLASH";
        tag = "Laser Cannon";
        
        wCost = 1960;
        eCost = 675;
        
        base = false;
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "ZAW-LC/NPM";
        tag = "Laser Cannon";
        
        wCost = 1830;
        eCost = 820;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAW-H801";
        tag = "Middle Missile Launcher";
        
        wCost = 2148;
        eCost = 420;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "EAW-S604";
        tag = "Small Missile Launcher";
        
        wCost = 1275;
        eCost = 377;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }

#endregion