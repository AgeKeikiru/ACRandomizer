/// @description Insert description here

#macro CC_TXT $CCCCCC

randomize();

noPart = place(obj_part);

lst_legType = [];
lst_gen = [];

place(obj_gameGen_1);
place(obj_gameGen_2);
place(obj_gameGen_3);
place(obj_gameGen_3N);

var
_x = 1050,
_y = 50,
_gap = 100,
_h2 = 0.8;

sld_armREQ = place(obj_button_slider, _x, _y);
with sld_armREQ{
    
    baseName = "Arm R Wep EqR";
    tooltip = "Equip Rate. 0% means this category will always remain unequipped";
    fn_update(1);
    
}

_y += _gap;

sld_armLEQ = place(obj_button_slider, _x, _y);
with sld_armLEQ{
    
    baseName = "Arm L Wep EqR";
    tooltip = "Equip Rate. 0% means this category will always remain unequipped";
    fn_update(0.8);
    
}

_y += _gap;

sld_rearEQ = place(obj_button_slider, _x, _y);
with sld_rearEQ{
    
    baseName = "Rear Wep EqR";
    tooltip = "Equip Rate. 0% means this category will always remain unequipped";
    fn_update(0.5);
    
}

_y += _gap;

sld_inEQ = place(obj_button_slider, _x, _y);
with sld_inEQ{
    
    baseName = "Inside EqR";
    tooltip = "Equip Rate. 0% means this category will always remain unequipped";
    fn_update(0.3);
    
}

_y += _gap;

sld_extEQ = place(obj_button_slider, _x, _y);
with sld_extEQ{
    
    baseName = "Extension EqR";
    tooltip = "Equip Rate. 0% means this category will always remain unequipped";
    fn_update(0.3);
    
}

_y += _gap;

sld_hngEQ = place(obj_button_slider, _x, _y);
with sld_hngEQ{
    
    baseName = "Hangar EqR";
    tooltip = "Equip Rate. 0% means this category will always remain unequipped";
    fn_update(0.5);
    
}

_x += -250;
_y = 50;

tog_radar = place(obj_button, _x, _y);
with tog_radar{
    
    text = "Force Radar";
    tooltip = "Guarantee radar functionality. Ensures a radar-enabled Head or Rear part will always be equipped";
    
    on = false;
    
    fn_click = function(){
        on = !on;
    }
    
}

_y += _gap;

tog_blade = place(obj_button, _x, _y);
with tog_blade{
    
    text = "Force L-Blade";
    tooltip = "When a Left Arm Weapon is chosen, guarantee it will be an energy blade to prevent ammo issues during missions. When hangar weapons are available, the blade will always be in the hangar";
    
    on = false;
    
    fn_click = function(){
        on = !on;
    }
    
}

_y += _gap;

_gap *= 0.35;

tog_leg_random = place(obj_button_list, _x, _y);
with tog_leg_random{
    
    text = "Random";
    tooltip = "Select legs at random. This can cause heavy legs to be chosen more often as legs are chosen after all other parts";
    
    src = obj_main.lst_legType;
    
    on = false;
    
    array_push(src, id);
    
}

_y += _gap;

tog_leg_weight = place(obj_button_list, _x, _y);
with tog_leg_weight{
    
    text = "Min. Weight";
    tooltip = "Select legs preferring parts that have lower valid Weight Capacities. This does not affect Alt part selection";
    
    src = obj_main.lst_legType;
    
    array_push(src, id);
    
}

_y += _gap;

tog_leg_alt = place(obj_button_list, _x, _y);
with tog_leg_alt{
    
    text = "Alternate";
    tooltip = "Alternate between the above options every time a build is generated.";
    
    src = obj_main.lst_legType;
    
    on = false;
    
    array_push(src, id);
    
}

_y = 600;

with place(obj_button, _x, _y){
    
    text = "Randomize";
    
    font = ft_basic;
    
    fn_click = function(){
        obj_main.selected.fn_randomize();
    }
    
}

_y = 680;
_gap = tog_radar.image_xscale * 0.55;
_x += -_gap * 2;

tog_gen_1 = place(obj_button_list, _x, _y);
with tog_gen_1{
    
    text = "PS1";
    
    src = obj_main.lst_gen;
    
    on = false;
    
    image_xscale *= 0.45;
    
    fn_click_end = function(){
        obj_main.selected = obj_gameGen_1;
    }
    
    array_push(src, id);
    
}

_x += _gap;

tog_gen_2 = place(obj_button_list, _x, _y);
with tog_gen_2{
    
    text = "2/AA";
    
    src = obj_main.lst_gen;
    
    image_xscale *= 0.45;
    
    fn_click_end = function(){
        obj_main.selected = obj_gameGen_2;
    }
    
    array_push(src, id);
    
}

_x += _gap;

tog_gen_3 = place(obj_button_list, _x, _y);
with tog_gen_3{
    
    text = "3/SL";
    
    src = obj_main.lst_gen;
    
    on = false;
    
    image_xscale *= 0.45;
    
    fn_click_end = function(){
        obj_main.selected = obj_gameGen_3;
    }
    
    array_push(src, id);
    
}

_x += _gap;

tog_gen_3N = place(obj_button_list, _x, _y);
with tog_gen_3N{
    
    text = "NX/LR";
    
    src = obj_main.lst_gen;
    
    on = false;
    
    image_xscale *= 0.45;
    
    fn_click_end = function(){
        obj_main.selected = obj_gameGen_3N;
    }
    
    array_push(src, id);
    
}

_x += _gap;
/*
tog_gen_4 = place(obj_button_list, _x, _y);
with tog_gen_4{
    
    text = "4/A";
    
    src = obj_main.lst_gen;
    
    on = false;
    
    image_xscale *= 0.45;
    
    fn_click_end = function(){
        //obj_main.selected = obj_gameGen_2;
    }
    
    array_push(src, id);
    
}

_x += _gap;

tog_gen_5 = place(obj_button_list, _x, _y);
with tog_gen_5{
    
    text = "V/D";
    
    src = obj_main.lst_gen;
    
    on = false;
    
    image_xscale *= 0.45;
    
    fn_click_end = function(){
        //obj_main.selected = obj_gameGen_2;
    }
    
    array_push(src, id);
    
}
/**/
selected = obj_gameGen_2;