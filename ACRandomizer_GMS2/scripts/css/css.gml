function css(__col) {
    
    //convert $color value to #color value
    
    return make_color_rgb(
        color_get_blue(__col),
        color_get_green(__col),
        color_get_red(__col),
    );
    
}