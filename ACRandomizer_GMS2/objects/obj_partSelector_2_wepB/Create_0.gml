/// @description Insert description here

event_inherited();

var
_this = id;

#region //missile

    with place(obj_part){
            
        name = "EWM-S602";
        tag = "Small Missile";
        
        wCost = 245;
        eCost = 245;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWM-S608";
        tag = "Small Missile";
        
        wCost = 337;
        eCost = 320;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWM-S612";
        tag = "Small Missile";
        
        wCost = 543;
        eCost = 549;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWM-M24/IMU";
        tag = "Multi Missile";
        
        wCost = 710;
        eCost = 353;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWM-M444";
        tag = "Vertical Missile";
        
        wCost = 655;
        eCost = 290;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWM-M24/IMI";
        tag = "Middle Missile";
        
        wCost = 620;
        eCost = 285;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWM-LD2/IDA";
        tag = "Dual Missile";
        
        wCost = 715;
        eCost = 313;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWM-FIN-B00";
        tag = "Large Missile";
        
        wCost = 1700;
        eCost = 634;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWM-NAP-02";
        tag = "Napalm Missile";
        
        wCost = 420;
        eCost = 285;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWM-M03";
        tag = "Middle Missile";
        
        wCost = 494;
        eCost = 324;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWM-M55/6";
        tag = "Middle Missile";
        
        wCost = 741;
        eCost = 203;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWM-GT/00";
        tag = "Ground Torpedo";
        
        wCost = 600;
        eCost = 422;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //rocket
    
    with place(obj_part){
            
        name = "ZWR-S/60";
        tag = "Small Rocket";
        
        wCost = 305;
        eCost = 8;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWR-M60";
        tag = "Triple Rocket";
        
        wCost = 625;
        eCost = 15;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWR-L24";
        tag = "Large Rocket";
        
        wCost = 830;
        eCost = 12;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWR-R/OCTOPUS";
        tag = "ECM Rocket";
        
        wCost = 790;
        eCost = 41;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWR-M/30";
        tag = "Middle Rocket";
        
        wCost = 390;
        eCost = 12;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWR-M40";
        tag = "Middle Rocket";
        
        wCost = 568;
        eCost = 18;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //cannon
    
    with place(obj_part){
            
        name = "EWC-CNG4000";
        tag = "Chain Gun";
        
        wCost = 1080;
        eCost = 11;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWC-LQ/2552";
        tag = "Laser Cannon";
        
        wCost = 955;
        eCost = 405;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWC-GN44-AC";
        tag = "Grenade Launcher";
        
        wCost = 1033;
        eCost = 8;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWC-IR/FLUX";
        tag = "Plasma Cannon";
        
        wCost = 1180;
        eCost = 804;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWC-LNT/250";
        tag = "Slug Gun";
        
        wCost = 1310;
        eCost = 6;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWC-XP0808";
        tag = "Pulse Cannon";
        
        wCost = 812;
        eCost = 618;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWC-XP0808";
        tag = "Pulse Cannon";
        
        wCost = 812;
        eCost = 618;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWC-CN/500";
        tag = "Chain Gun";
        
        wCost = 540;
        eCost = 20;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWC-GN-81";
        tag = "Grenade Launcher";
        
        wCost = 864;
        eCost = 6;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWC-XP02/QL";
        tag = "Pulse Cannon";
        
        wCost = 574;
        eCost = 495;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //utility
    
    with place(obj_part){
            
        name = "EM-AAT110";
        tag = "General Magazine";
        
        wCost = 570;
        eCost = 10;
        
        base = false;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EM-SD120";
        tag = "Solid Magazine";
        
        wCost = 544;
        eCost = 0;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZRS-SS4/BW";
        tag = "Radar";
        
        wCost = 188;
        eCost = 199;
        
        radar = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ERM-TE3000";
        tag = "Radar";
        
        wCost = 175;
        eCost = 247;
        
        radar = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZRL-774/WH";
        tag = "Radar";
        
        wCost = 223;
        eCost = 393;
        
        base = false;
        radar = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "BRLT-B10000";
        tag = "Radar";
        
        wCost = 254;
        eCost = 456;
        
        radar = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "BRS-B-OSPREY";
        tag = "Radar";
        
        wCost = 300;
        eCost = 542;
        
        radar = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EXM-DD02";
        tag = "General Magazine";
        
        wCost = 1408;
        eCost = 17;
        
        base = false;
        dualBack = true;
        
        array_push(_this.parts, id);
        
    }
    
#endregion

#region //dual backs
    
    with place(obj_part){
            
        name = "EWX-BAL4";
        tag = "Multi Missile";
        
        wCost = 1430;
        eCost = 320;
        
        dualBack = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWX-VLS241";
        tag = "Vertical Missiles";
        
        wCost = 1180;
        eCost = 606;
        
        dualBack = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWX-IV/PURSUIT";
        tag = "Pursuit Missile";
        
        wCost = 1550;
        eCost = 345;
        
        dualBack = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWX-F04/ORBIT";
        tag = "Orbit Cannon";
        
        wCost = 1317;
        eCost = 1020;
        
        base = false;
        dualBack = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "EWX-GCN77-4";
        tag = "Chain Gun";
        
        wCost = 1756;
        eCost = 65;
        
        base = false;
        dualBack = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZWX-E90/MAC";
        tag = "Plasma Cannon";
        
        wCost = 1630;
        eCost = 965;
        
        base = false;
        dualBack = true;
        
        array_push(_this.parts, id);
        
    }
    
    with place(obj_part){
            
        name = "ZXR-S/STEALTH";
        tag = "Stealth";
        
        wCost = 1413;
        eCost = 999;
        
        base = false;
        dualBack = true;
        
        array_push(_this.parts, id);
        
    }

#endregion