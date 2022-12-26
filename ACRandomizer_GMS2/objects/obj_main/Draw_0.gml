/// @description Insert description here
// You can write your code in this editor

draw_set_color($222222);

draw_rectangle(0, 0, room_width, room_height, false);

draw_set_color(c_white);

with selected{
    
    var
    _iPage = 10,
    _iPageNext = _iPage,
    _draw_x = 10,
    _arr = [
        heads,
        cores,
        arms,
        legs,
        boosts,
        fcs,
        gens,
        rads,
        ins,
        exts,
        backRs,
        backLs,
        wepRs,
        wepLs
    ],
    
    _text = "";
    
    draw_set_font(ft_mini);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
    draw_set_color(CC_TXT);
    
    var _i = 0;
    while(_i < array_length(_arr)){
        
        var
        _pick = _arr[_i];
        
        _text += _pick.title;
        
        if(_pick.main.tag != ""){
            _text += " - " + _pick.main.tag;
        }
        
        _text += "\n" + _pick.main.name + "\n\n";
        
        _i++;
        
        if(_i >= _iPageNext){
            
            draw_text(_draw_x, 10, _text);
            
            _iPageNext += _iPage;
            _draw_x += 320;
            
            _text = "";
            
        }
        
    }
    
    draw_text(_draw_x, 10, _text);
    
}

with obj_button{
    
    fn_draw();
    
    if(collision_point(mouse_x, mouse_y, id, false, false) != noone && tooltip != ""){
        
        draw_set_font(ft_mini);
        draw_set_halign(fa_left);
        draw_set_valign(fa_bottom);
        
        var
        _w = min(300, string_width(tooltip)),
        _h = string_height_ext(tooltip, -1, _w),
        _border = 5,
        _x = clamp(mouse_x, _border * 2, room_width + -_w + -_border * 2),
        _y = clamp(mouse_y + _h + 25, _h + _border * 2, room_height + -_border * 2);
        
        draw_set_color($111111);
        
        draw_rectangle(_x + -_border, _y + _border, _x + _w + _border, _y + -_h + -_border, false);
        
        draw_set_color(CC_TXT);
        
        draw_text_ext(_x, _y, tooltip, -1, _w);
        
    }
    
}