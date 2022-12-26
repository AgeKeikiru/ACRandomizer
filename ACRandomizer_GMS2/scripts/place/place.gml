function place(__obj, __x, __y) {
    
    if(__x == undefined){ __x = 0; }
    if(__y == undefined){ __y = 0; }
    
    return instance_create_depth(__x, __y, 0, __obj);
    
}