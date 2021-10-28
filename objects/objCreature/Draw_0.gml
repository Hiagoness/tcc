color = make_color_hsv(40 - (totalEnergy - global.defaultEnergy)/2, 127.5, 255);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, image_alpha);