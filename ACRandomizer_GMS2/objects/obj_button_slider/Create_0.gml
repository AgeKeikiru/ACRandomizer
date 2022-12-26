/// @description Insert description here

event_inherited();

baseName = "";
baseVal = 0;

subs = [];

for(var _i = 0; _i <= 10; _i++){
    
    var
    _size = image_xscale / 10,
    _btn = place(obj_button, x + _size * (_i + -0.5), y + image_yscale);
    
    _btn.src = id;
    
    with _btn{
        
        on = false;
        
        value = _i * 0.1;
        
        image_xscale = _size;
        image_yscale = image_xscale;
        
        image_alpha = 0;
        
        fn_click = function(){
            
            src.fn_update(value);
            
        }
        
    }
    
    array_push(subs, _btn);
    
}

fn_update = function(__val){
    
    baseValue = __val;
    
    text = baseName + ": " + string(round(baseValue * 100)) + "%";
    
    for(var _i = 0; _i < array_length(subs); _i++){
        
        subs[_i].on = subs[_i].value == baseValue;
        
    }
    
}

fn_draw = function(){
    
    image_alpha = 0.2;
    
    //draw_self();
    
    draw_set_font(ft_mini);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    
    draw_set_color(CC_TXT);
    
    draw_text(x + image_xscale / 2, y + image_yscale + -5, text);
    
    draw_line_width(x, y + image_yscale, x + image_xscale, y + image_yscale, 2);
    
    for(var _i = 0; _i < array_length(subs); _i++){
        
        with subs[_i]{
        
            draw_set_color(on ? image_blend : CC_TXT);
            
            draw_line_width(
                x + image_xscale / 2,
                lerp(y, y + image_yscale, on ? 0 : 0.3),
                x + image_xscale / 2,
                lerp(y, y + image_yscale, on ? 1 : 0.7),
                on ? 8 : 1
            );
        
        }
        
    }
    
}