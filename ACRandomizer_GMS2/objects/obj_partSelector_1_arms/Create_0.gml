/// @description Insert description here

event_inherited();

var
_this = id;

#region //mid arm

    with place(obj_part){
        
        name = "AN-101";
        tag = "Middleweight";
        
        wCost = 1228;
        eCost = 1006;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AN-3001";
        tag = "Middleweight";
        
        wCost = 1612;
        eCost = 1258;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AN-D-7001";
        tag = "Middleweight";
        
        wCost = 1445;
        eCost = 1512;
        
        array_push(_this.parts, id);
        
    }

#endregion

#region //light arm

    with place(obj_part){
        
        name = "AN-201";
        tag = "Lightweight";
        
        wCost = 1054;
        eCost = 877;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AN-25";
        tag = "Lightweight";
        
        wCost = 853;
        eCost = 682;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AN-K1";
        tag = "Lightweight";
        
        wCost = 905;
        eCost = 930;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }

#endregion

#region //heavy arm

    with place(obj_part){
        
        name = "AN-863-B";
        tag = "Heavyweight";
        
        wCost = 1726;
        eCost = 1394;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "ANKS-1A46J";
        tag = "Heavyweight";
        
        wCost = 2120;
        eCost = 1415;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AN-891-S";
        tag = "Heavyweight";
        
        wCost = 1790;
        eCost = 1290;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }

#endregion

#region //wep arm

    with place(obj_part){
        
        name = "AW-30/3";
        tag = "Dual Missile";
        
        wCost = 480;
        eCost = 377;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AW-GT2000";
        tag = "Gatling Gun Arms";
        
        wCost = 1415;
        eCost = 92;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AW-MG25/2";
        tag = "Machine Gun Arms";
        
        wCost = 1193;
        eCost = 78;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AW-RF105";
        tag = "Cannon";
        
        wCost = 1530;
        eCost = 106;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AW-RF120";
        tag = "Cannon";
        
        wCost = 1827;
        eCost = 137;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AW-S60/2";
        tag = "Dual Missile";
        
        wCost = 762;
        eCost = 420;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AW-XC5500";
        tag = "Plasma Cannon";
        
        wCost = 1688;
        eCost = 547;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AW-XC65";
        tag = "Plasma Cannon";
        
        wCost = 1905;
        eCost = 625;
        
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AW-DC/2";
        tag = "Dual Cannon";
        
        wCost = 1805;
        eCost = 220;
        
        base = false;
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
        
        name = "AW-R/4";
        tag = "Cannon";
        
        wCost = 1650;
        eCost = 187;
        
        base = false;
        wepArm = true;
        
        array_push(_this.parts, id);
        
    }

#endregion