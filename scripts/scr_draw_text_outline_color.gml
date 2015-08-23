//Extreemly simple code to make your text have an outline
 //example:
 //draw_text_outline(text,x,y) And thats it!
 
 col = argument3;

 draw_set_color(c_black)
 draw_text(argument1+1,argument2+1,argument0)
 draw_text(argument1-1,argument2-1,argument0)
 draw_text(argument1,argument2+1,argument0)
 draw_text(argument1+1,argument2,argument0)
 draw_text(argument1,argument2-1,argument0)
 draw_text(argument1-1,argument2,argument0)
 draw_text(argument1-1,argument2+1,argument0)
 draw_text(argument1+1,argument2-1,argument0)
 draw_set_color(col)
 draw_text(argument1,argument2,argument0)

