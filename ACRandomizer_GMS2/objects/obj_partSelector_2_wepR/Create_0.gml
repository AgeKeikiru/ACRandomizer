/// @description Insert description here

event_inherited();

var
_this = id;

#region //rifle

    with place(obj_part){
            
        name = "ZWG-RF/37";
        tag = "Rifle";
        
        wCost = 405;
        eCost = 6;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-RF-M15";
        tag = "Rifle";
        
        wCost = 325;
        eCost = 10;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-RF-M35";
        tag = "Rifle";
        
        wCost = 520;
        eCost = 8;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWG-SRF/8";
        tag = "Sniper Rifle";
        
        wCost = 610;
        eCost = 4;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWF-S/NIGHT";
        tag = "Rifle";
        
        wCost = 428;
        eCost = 146;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-SRF-9";
        tag = "Sniper Rifle";
        
        wCost = 505;
        eCost = 6;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-RF-10LB";
        tag = "Rifle";
        
        wCost = 498;
        eCost = 14;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //machine gun
    
    with place(obj_part){
            
        name = "EWG-MGA2";
        tag = "Machine Gun";
        
        wCost = 706;
        eCost = 4;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWG-AR/K";
        tag = "Machine Gun";
        
        wCost = 400;
        eCost = 70;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-MGSAW";
        tag = "Machine Gun";
        
        wCost = 590;
        eCost = 4;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //handgun
    
    with place(obj_part){
            
        name = "EWG-HG-SI";
        tag = "Handgun";
        
        wCost = 198;
        eCost = 36;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-HG-ART";
        tag = "Handgun";
        
        wCost = 146;
        eCost = 52;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWG-HG/111";
        tag = "Handgun";
        
        wCost = 240;
        eCost = 64;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //bazooka
    
    with place(obj_part){
            
        name = "EWG-BZ-B1100";
        tag = "Bazooka";
        
        wCost = 1180;
        eCost = 72;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWG-BZ/555";
        tag = "Bazooka";
        
        wCost = 1010;
        eCost = 38;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWG-BZ/HYDRA";
        tag = "Spread Bazooka";
        
        wCost = 1230;
        eCost = 36;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //shotgun
    
    with place(obj_part){
            
        name = "EWG-GS970";
        tag = "Shotgun";
        
        wCost = 680;
        eCost = 37;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-GSH8";
        tag = "Shotgun";
        
        wCost = 533;
        eCost = 54;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //energy weapons
    
    with place(obj_part){
            
        name = "EWG-XP1500";
        tag = "Pulse Rifle";
        
        wCost = 125;
        eCost = 256;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWG-XP/400";
        tag = "Pulse Rifle";
        
        wCost = 159;
        eCost = 288;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "KARASAWA-MK2";
        tag = "Laser Rifle";
        
        wCost = 1120;
        eCost = 442;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWG-MG/ENE";
        tag = "Energy Machine Gun";
        
        wCost = 950;
        eCost = 160;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWG-HC-IR/K99";
        tag = "Plasma Rifle";
        
        wCost = 777;
        eCost = 604;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-XC213";
        tag = "Laser Rifle";
        
        wCost = 542;
        eCost = 394;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWG-XC/01";
        tag = "Laser Rifle";
        
        wCost = 469;
        eCost = 586;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //explosive
    
    with place(obj_part){
            
        name = "EWG-HC-GN210";
        tag = "Grenade Rifle";
        
        wCost = 1062;
        eCost = 44;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-HC-RAW";
        tag = "Hand Rocket";
        
        wCost = 990;
        eCost = 27;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-FTG500";
        tag = "Flamethrower";
        
        wCost = 1250;
        eCost = 9;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWG-HM-04";
        tag = "Hand Missile";
        
        wCost = 880;
        eCost = 33;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }

#endregion