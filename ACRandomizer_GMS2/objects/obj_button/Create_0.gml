/// @description Insert description here
// You can write your code in this editor

#macro CC_BLUE css($4986c4)

image_xscale = 200;
image_yscale = 50;
image_blend = CC_BLUE;

text = "";
tooltip = "";

value = 0;

on = true;

src = noone;

font = ft_mini;

fn_click = function(){}

fn_click_end = function(){ /*abstract*/ }

fn_draw = function(){
    
    draw_set_color(c_white);
    
    image_blend = on ? CC_BLUE : c_dkgray;
    
    draw_self();
    
    draw_set_font(font);
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    
    draw_text(x + image_xscale / 2, y + image_yscale / 2, text);
    
}