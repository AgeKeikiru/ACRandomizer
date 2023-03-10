/// @description Insert description here
// You can write your code in this editor

parts = [];

title = "";

main = obj_main.noPart;

alt = obj_main.noPart;

fn_draw = function(){
    
    draw_set_color(merge_color(CC_BLUE, c_white, 0.5));
    
    draw_set_font(ft_labelMini);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    draw_text(x + 8, y, title);
    
    draw_set_color(CC_TXT);
    
    draw_set_font(ft_mini);
    
    draw_text(x, y + 15, main.name);
    draw_text_transformed(x + 5, y + 30, main.tag, 0.8, 0.8, 0);
    
    draw_text(x, y + 55, alt.name);
    draw_text_transformed(x + 5, y + 70, alt.tag, 0.8, 0.8, 0);
    
}

fn_select = function(__preSelect){
    
    var
    _log = true;
    
    alt = obj_main.noPart;
    
    //choose random part
    if(__preSelect != undefined){
        main = __preSelect;
    }else{
        main = arrayRand(parts);
    }
    
    //if non-base part, select a base part that is compatible with weight and energy restrictions for alt
    if(!main.base){
        
        var
        _base = [];
        
        for(var _i = 0; _i < array_length(parts); _i++){
            
            var
            _part = parts[_i];
            
            if(
                _part.base &&
                _part.wepArm == main.wepArm &&
                _part.boostLeg == main.boostLeg &&
                _part.wCost <= main.wCost &&
                _part.eCost <= main.eCost &&
                _part.wLimit >= main.wLimit &&
                _part.eLimit >= main.eLimit
            ){
                array_push(_base, _part);
            }
            
        }
        
        if(array_length(_base)){
            
            alt = arrayRand(_base);
            
        }else{
            
            show_debug_message(object_get_name(object_index) + " warning! Non-base part " + main.name + " chosen, no compatible alt found, attempting to re-select");
            _log = false;
            fn_select();
            
        }
        
    }
    
    if(_log){
        show_debug_message(object_get_name(object_index) + "\nMain: " + main.name + "\nAlt: " + alt.name + "\n\n");
    }
    
}