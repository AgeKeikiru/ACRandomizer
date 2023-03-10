/// @description Insert description here
// You can write your code in this editor

heads = noone;
cores = noone;
arms = noone;
legs = noone;
boosts = noone;
fcs = noone;
gens = noone;
rads = noone;
ins = noone;
exts = noone;
backRs = noone;
backLs = noone;
wepRs = noone;
wepLs = noone;
hngRs = noone;
hngLs = noone;
ops = noone;

veto = "---";

vetos = [
    "Can change Head",
    "Can change either Arm Weapon (not both, weapon arms can change to any other weapon arm)",
    "Can change either Back Weapon (not both, Duals can change to another Dual or a single Back Weapon)",
    "Can change Extension",
    "Can change Inside",
    "Can change Radiator",
    "Can use/change Optional Parts",
    "Can reroll"
];

wTotal = 0; //weight
aTotal = 0; //arm weight
eTotal = 0; //energy drain

fn_randomize = function(){
    
    var
    _fail = false,
    _radar = 0;
    
    show_debug_message("");
    
    with obj_partSelector{
        main = obj_main.noPart;
        alt = obj_main.noPart;
    }
    
    wTotal = 0;
    aTotal = 0;
    eTotal = 0;
    
    //determine arm related parts to get total arm weight
    
    #region //arms
    
        /*
        randomize arms
        */
        
        arms.fn_select();
        
        wTotal += arms.main.wCost;
        aTotal += arms.main.wCost;
        eTotal += arms.main.eCost;
    
    #endregion
    
    #region //arm weapons
    
        /*
        Weapon Arms will skip this step
        settings-based: chance to skip each side individually
        */
    
        if(!arms.main.wepArm){
            
            if(random(1) < obj_main.sld_armREQ.baseValue){
        
                wepRs.fn_select();
            
                wTotal += wepRs.main.wCost;
                aTotal += wepRs.main.wCost;
                eTotal += wepRs.main.eCost;
                
                if(instance_exists(hngRs) && random(1) < obj_main.sld_hngEQ.baseValue){
                    
                    hngRs.fn_select();
            
                    wTotal += hngRs.main.wCost;
                    aTotal += hngRs.main.wCost;
                    eTotal += hngRs.main.eCost;
                    
                }
            
            }
            
            if(random(1) < obj_main.sld_armLEQ.baseValue){
            
                if(obj_main.tog_blade.on){
                    
                    var
                    _arr = [];
                    
                    for(var _i = 0; _i < array_length(wepLs.parts); _i++){
                        
                        var
                        _part = wepLs.parts[_i];
                        
                        if(_part.bladeL && _part.base){
                            array_push(_arr, _part);
                        }
                        
                    }
                    
                    wepLs.fn_select(arrayRand(_arr));
                    
                }else{
                    wepLs.fn_select();
                }
            
                wTotal += wepLs.main.wCost;
                aTotal += wepLs.main.wCost;
                eTotal += wepLs.main.eCost;
                
                if(instance_exists(hngLs) && random(1) < obj_main.sld_hngEQ.baseValue){
                    
                    if(wepLs.main.hangar && (wepLs.alt == obj_main.noPart || wepLs.alt.hangar)){
                        
                        //move left weapon to hangar, and re-roll left weapon
                        
                        hngLs.main = wepLs.main;
                        hngLs.alt = wepLs.alt;
                        
                        wepLs.fn_select();
                        
                        wTotal += wepLs.main.wCost;
                        aTotal += wepLs.main.wCost;
                        eTotal += wepLs.main.eCost;
                        
                    }else{
                    
                        hngLs.fn_select();
                
                        wTotal += hngLs.main.wCost;
                        aTotal += hngLs.main.wCost;
                        eTotal += hngLs.main.eCost;
                    
                    }
                    
                }
            
            }
        
        }
    
    #endregion
    
    #region //inside
    
        /*
        settings-based: chance to skip
        */
        
        if(ins != noone){
        
            if(random(1) < obj_main.sld_inEQ.baseValue){
                
                ins.fn_select();
            
                wTotal += ins.main.wCost;
                aTotal += ins.main.wCost;
                eTotal += ins.main.eCost;
                
            }
        
        }
    
    #endregion
        
    #region //extension
    
        /*
        settings-based: chance to skip
        */
        
        if(exts != noone){
        
            if(random(1) < obj_main.sld_extEQ.baseValue){
                
                exts.fn_select();
            
                wTotal += exts.main.wCost;
                aTotal += exts.main.wCost;
                eTotal += exts.main.eCost;
                
            }
        
        }
    
    #endregion
    
    //determine core based on arm weight
    
    #region //core
    
        /*
        generate a list of compatible cores to preselect
        */
        
        var
        _arr = [];
        
        for(var _i = 0; _i < array_length(cores.parts); _i++){
            
            var
            _part = cores.parts[_i];
            
            if(_part.wLimit >= aTotal && (!instance_exists(hngRs) || _part.hangar || (hngRs.main == obj_main.noPart && hngLs.main == obj_main.noPart))){
                array_push(_arr, _part);
            }
            
        }
        
        if(array_length(_arr)){
            
            cores.fn_select(arrayRand(_arr));
        
            wTotal += cores.main.wCost;
            eTotal += cores.main.eCost;
            
        }else{
            _fail = true;
            show_debug_message("Build failed! No compatible Cores? Will auto-retry");
        }
    
    #endregion
    
    #region //booster
    
        /*
        
        */
        
        boosts.fn_select();
        
        wTotal += boosts.main.wCost;
        eTotal += boosts.main.eCost;
    
    #endregion
    
    #region //fcs
    
        /*
        
        */
        
        fcs.fn_select();
        
        wTotal += fcs.main.wCost;
        eTotal += fcs.main.eCost;
    
    #endregion
    
    #region //radiator
    
        /*
        
        */
        
        if(rads != noone){
        
            rads.fn_select();
            
            wTotal += rads.main.wCost;
            eTotal += rads.main.eCost;
        
        }
    
    #endregion
    
    #region //back weapon R
    
        /*
        settings-based: chance to skip
        */
        
        if(random(1) < obj_main.sld_rearEQ.baseValue){
        
            backRs.fn_select();
            
            wTotal += backRs.main.wCost;
            eTotal += backRs.main.eCost;
            
            _radar += backRs.main.radar * backRs.alt.radar;
        
        }
    
    #endregion
    
    #region //back weapon L
    
        /*
        settings-based: chance to skip
        Dual Backs will skip this step
        if Back L selects a Dual Back, switch to none
        */
        
        if(random(1) < obj_main.sld_rearEQ.baseValue && !backRs.main.dualBack){
            
            backLs.fn_select();
            
            if(backLs.main.dualBack || backLs.alt.dualBack){
                backLs.main = obj_main.noPart;
                backLs.alt = obj_main.noPart;
            }
        
            wTotal += backLs.main.wCost;
            eTotal += backLs.main.eCost;
            
            _radar += backRs.main.radar * backRs.alt.radar;
            
        }
    
    #endregion
    
    #region //head
    
        /*
        settings-based: guarantee a radar head if no back radar is equipped
        */
        
        if(!_radar && obj_main.tog_radar.on){
            
            var
            _arr = [];
            
            for(var _i = 0; _i < array_length(heads.parts); _i++){
                
                var
                _part = heads.parts[_i];
                
                if(_part.radar && _part.base){
                    array_push(_arr, _part);
                }
                
            }
            
            heads.fn_select(arrayRand(_arr));
            
        }else{
            heads.fn_select();
        }
        
        wTotal += heads.main.wCost;
        eTotal += heads.main.eCost;
    
    #endregion
    
    //determine generator based on total energy drain
    
    #region //generator
    
        /*
        generate a list of compatible generators to preselect
        */
        
        var
        _arr = [];
        
        for(var _i = 0; _i < array_length(gens.parts); _i++){
            
            var
            _part = gens.parts[_i];
            
            if(_part.eLimit >= eTotal){
                array_push(_arr, _part);
            }
            
        }
        
        if(array_length(_arr)){
            
            gens.fn_select(arrayRand(_arr));
        
            wTotal += gens.main.wCost;
            
        }else{
            _fail = true;
            show_debug_message("Build failed! No compatible Generators? Will auto-retry");
        }
    
    #endregion
    
    //determine legs based on total weight
    
    #region //legs
    
        /*
        generate a list of compatible legs to preselect, account for energy cost
        settings-based: choose randomly / minimum usable weight limit / alternate between both
        remove boosters if boostLegs are equipped
        */
        
        var
        _arr = [];
        
        for(var _i = 0; _i < array_length(legs.parts); _i++){
            
            var
            _part = legs.parts[_i];
            
            if(_part.wLimit >= wTotal && eTotal + _part.eCost <= gens.main.eLimit){
                array_push(_arr, _part);
            }
            
        }
        
        show_debug_message("Legs available: " + string(array_length(_arr)));
        
        if(obj_main.tog_leg_weight.on || (obj_main.tog_leg_alt.on && choose(true, false))){
            
            //sort legs by weight capacity
            array_sort(_arr, function(__a, __b){
                return __a.wLimit + -__b.wLimit;
            });
            
            //get the lowest portion of the list
            while(array_length(_arr) > 5){
                array_pop(_arr);
            }
            
        }
        
        if(array_length(_arr)){
            
            legs.fn_select(arrayRand(_arr));
        
            eTotal += legs.main.eCost;
            
            if(legs.main.boostLeg){
                boosts.main = obj_main.noPart;
                boosts.alt = obj_main.noPart;
            }
            
        }else{
            _fail = true;
            show_debug_message("Build failed! No compatible Legs? Will auto-retry");
        }
    
    #endregion
    
    #region //optional parts
    
        /*
        settings-based: preselect option parts
        */
    
    #endregion
    
    #region //veto
    
        /*
        
        */
        
        veto = arrayRand(vetos);
    
    #endregion
    
    show_debug_message(string(wTotal) + "/" + string(legs.main.wLimit));
    
    if(_fail){
        fn_randomize();
    }
    
}