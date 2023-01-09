/// @description Insert description here

event_inherited();

var
_x = 10,
_y = 10,
_xGap = 200,
_yGap = 100;

heads = place(obj_partSelector_3N_head, _x, _y);
heads.title = "HEAD";

_y += _yGap;

cores = place(obj_partSelector_3N_core, _x, _y);
cores.title = "CORE";

_y += _yGap;

arms = place(obj_partSelector_3N_arms, _x, _y);
arms.title = "ARMS";

_y += _yGap;

legs = place(obj_partSelector_3N_legs, _x, _y);
legs.title = "LEGS";

_y += _yGap;

boosts = place(obj_partSelector_3N_booster, _x, _y);
boosts.title = "BOOSTER";

_y += _yGap;

fcs = place(obj_partSelector_3N_fcs, _x, _y);
fcs.title = "FCS";

_y += _yGap;

gens = place(obj_partSelector_3N_generator, _x, _y);
gens.title = "GENERATOR";

_y = 10;
_x += _xGap;

rads = place(obj_partSelector_3N_radiator, _x, _y);
rads.title = "RADIATOR";

_y += _yGap;

ins = place(obj_partSelector_3N_inside, _x, _y);
ins.title = "INSIDE";

_y += _yGap;

exts = place(obj_partSelector_3N_extension, _x, _y);
exts.title = "EXTENSION";

_y += _yGap;

backRs = place(obj_partSelector_3N_wepB, _x, _y);
backRs.title = "BACK WEP R";

_y += _yGap;

backLs = place(obj_partSelector_3N_wepB, _x, _y);
backLs.title = "BACK WEP L";

_y += _yGap;

wepRs = place(obj_partSelector_3N_wepR, _x, _y);
wepRs.title = "ARM WEP R";

_y += _yGap;

wepLs = place(obj_partSelector_3N_wepL, _x, _y);
wepLs.title = "ARM WEP L";

_y = 10;
_x += _xGap;

hngRs = place(obj_partSelector_3N_wepR, _x, _y);
hngRs.title = "HANGAR R";

with hngRs{

    for(var _i = array_length(parts) + -1; _i >= 0; _i--){
        
        if(!parts[_i].hangar){
            array_delete(parts, _i, 1);
        }
        
    }

}

_y += _yGap;

hngLs = place(obj_partSelector_3N_wepL, _x, _y);
hngLs.title = "HANGAR L";

with hngLs{

    for(var _i = array_length(parts) + -1; _i >= 0; _i--){
        
        if(!parts[_i].hangar){
            array_delete(parts, _i, 1);
        }
        
    }

}

_y += _yGap;

ops = place(obj_partSelector_3N_option, _x, _y);
ops.title = "OPTION";
