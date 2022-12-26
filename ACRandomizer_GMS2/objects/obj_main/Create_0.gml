/// @description Insert description here

#macro CC_TXT $CCCCCC

randomize();

noPart = place(obj_part);

place(obj_gameGen_2);

var
_x = 1050,
_y = 50,
_gap = 100;

sld_armREQ = place(obj_button_slider, _x, _y);
with sld_armREQ{
    baseName = "Arm R Wep EqR";
    tooltip = "Equip Rate. 0% means this category will always remain unequipped";
    fn_update(0.9);
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
    fn_update(0.2);
}

_y += _gap;

sld_extEQ = place(obj_button_slider, _x, _y);
with sld_extEQ{
    baseName = "Extension EqR";
    tooltip = "Equip Rate. 0% means this category will always remain unequipped";
    fn_update(0.2);
}

with place(obj_button, _x, 600){
    
    text = "Randomize";
    
    fn_click = function(){
        obj_main.selected.fn_randomize();
    }
    
}

selected = obj_gameGen_2;